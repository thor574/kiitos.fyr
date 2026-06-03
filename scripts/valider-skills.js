#!/usr/bin/env node

'use strict';

const fs = require('fs');
const path = require('path');

const root = path.resolve(__dirname, '..');
const skillsDir = path.join(root, '.github', 'skills');
const strict = process.argv.includes('--strict');

const recommendedSections = [
  {
    name: 'Anti-rasjonalisering',
    patterns: [/^##\s+Anti-rasjonalisering\s*$/im, /^##\s+Common Rationalizations\s*$/im],
  },
  {
    name: 'Røde flagg',
    patterns: [/^##\s+Røde flagg\s*$/im, /^##\s+Red Flags\s*$/im],
  },
  {
    name: 'Verifikasjon',
    patterns: [/^##\s+Verifikasjon\s*$/im, /^##\s+Verification\s*$/im],
  },
];

function parseFrontmatter(content) {
  const match = content.match(/^\uFEFF?---[ \t]*\r?\n([\s\S]*?)\r?\n---[ \t]*\r?\n/);
  if (!match) {
    return null;
  }

  const frontmatter = {};
  for (const line of match[1].split(/\r?\n/)) {
    const colonIndex = line.indexOf(':');
    if (colonIndex === -1) {
      continue;
    }

    const key = line.slice(0, colonIndex).trim();
    const value = line.slice(colonIndex + 1).trim().replace(/^['"]|['"]$/g, '');
    if (key) {
      frontmatter[key] = value;
    }
  }

  return frontmatter;
}

function hasAny(content, patterns) {
  return patterns.some((pattern) => pattern.test(content));
}

function validateSkill(skillName) {
  const errors = [];
  const warnings = [];
  const skillFile = path.join(skillsDir, skillName, 'SKILL.md');

  if (!fs.existsSync(skillFile)) {
    return { errors: ['Mangler SKILL.md'], warnings };
  }

  const content = fs.readFileSync(skillFile, 'utf8');
  const frontmatter = parseFrontmatter(content);

  if (!frontmatter) {
    errors.push('Mangler YAML-frontmatter');
  } else {
    if (!frontmatter.name) {
      errors.push('Frontmatter mangler name');
    } else if (frontmatter.name !== skillName) {
      errors.push(`Frontmatter name "${frontmatter.name}" samsvarer ikke med mappenavnet "${skillName}"`);
    }

    if (!frontmatter.description) {
      errors.push('Frontmatter mangler description');
    } else if (!/Brukes|Use when/i.test(frontmatter.description)) {
      warnings.push('description bør ha tydelig bruksutløser, helst "Brukes når ..."');
    }
  }

  if (!/^[a-z0-9]+(?:-[a-z0-9]+)*$/.test(skillName)) {
    warnings.push('mappenavn bør være lowercase-kebab-case');
  }

  for (const section of recommendedSections) {
    if (!hasAny(content, section.patterns)) {
      warnings.push(`mangler anbefalt seksjon: ${section.name}`);
    }
  }

  return { errors, warnings };
}

function main() {
  if (!fs.existsSync(skillsDir)) {
    console.error(`ERROR: fant ikke skills-mappen: ${skillsDir}`);
    process.exit(1);
  }

  const skillNames = fs.readdirSync(skillsDir)
    .filter((entry) => fs.statSync(path.join(skillsDir, entry)).isDirectory())
    .sort();

  let errorCount = 0;
  let warningCount = 0;

  for (const skillName of skillNames) {
    const result = validateSkill(skillName);
    errorCount += result.errors.length;
    warningCount += result.warnings.length;

    if (result.errors.length === 0 && result.warnings.length === 0) {
      console.log(`OK    ${skillName}`);
      continue;
    }

    console.log(`${result.errors.length > 0 ? 'ERROR' : 'WARN '} ${skillName}`);
    for (const error of result.errors) {
      console.log(`      ERROR: ${error}`);
    }
    for (const warning of result.warnings) {
      console.log(`      WARN:  ${warning}`);
    }
  }

  const strictFailure = strict && warningCount > 0;
  const status = errorCount > 0 || strictFailure ? 'FAILED' : warningCount > 0 ? 'PASSED WITH WARNINGS' : 'PASSED';

  console.log(`\n${skillNames.length} skills checked - ${errorCount} error(s), ${warningCount} warning(s) - ${status}`);

  if (errorCount > 0 || strictFailure) {
    process.exit(1);
  }
}

main();
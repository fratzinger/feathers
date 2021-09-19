---
to: "package.json"
force: true
sh: "<%= h.install(...dependencies) %>; <%= h.installDev(...devDependencies) %>"
---
<%

// This extends the content of the existing package.json
const pkg = {
  ...h.pkg,
  scripts: {
    ...h.pkg.scripts,
    dev: 'ts-node-dev --no-notify ${h.lib}/',
    compile: 'shx rm -rf lib/ && tsc',
    start: 'npm run compile && node lib/',
    test: 'mocha test/ --require ts-node/register --recursive --extension .ts --exit'
  }
};

%><%- JSON.stringify(pkg, null, '  ') %>
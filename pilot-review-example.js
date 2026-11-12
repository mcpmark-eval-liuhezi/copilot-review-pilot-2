#!/usr/bin/env node
// pilot-review-example.js — small example script for the Copilot review pilot
// Demo: reads a config value, validates it, and prints a summary.

const DEFAULT_PORT = 3000;

function parseArgs(args) {
  const portArg = args.find((a) => a.startsWith("--port="));
  return portArg ? parseInt(portArg.split("=")[1], 10) : DEFAULT_PORT;
}

function validatePort(port) {
  if (!Number.isInteger(port) || port < 1 || port > 65535) {
    throw new Error(`Invalid port: ${port}. Must be an integer between 1 and 65535.`);
  }
  return port;
}

function main() {
  const port = validatePort(parseArgs(process.argv.slice(2)));
  console.log(`Server configured to run on port ${port} (default: ${DEFAULT_PORT}).`);
  console.log(" Pilot review candidate: input validation, error handling, and CLI parsing covered.");
}

main();

module.exports = { parseArgs, validatePort, DEFAULT_PORT };

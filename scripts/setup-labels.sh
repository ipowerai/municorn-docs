#!/bin/bash
# Setup labels for the municorn-docs repository
# Usage: bash setup-labels.sh

REPO="ipowerai/municorn-docs"

echo "🏷️  Setting up labels for $REPO..."

# Delete default labels we don't need
for label in "documentation" "enhancement" "good first issue" "help wanted" "invalid" "question" "wontfix"; do
  gh label delete "$label" --repo "$REPO" --yes 2>/dev/null
done

# Bug-related labels
gh label create "bug" --repo "$REPO" --color "d73a4a" --description "Something isn't working" --force
gh label create "bug-critical" --repo "$REPO" --color "b60205" --description "Critical bug — system down or data loss" --force
gh label create "bug-high" --repo "$REPO" --color "d93f0b" --description "High severity bug — major feature broken" --force
gh label create "bug-medium" --repo "$REPO" --color "fbca04" --description "Medium severity bug — workaround exists" --force
gh label create "bug-low" --repo "$REPO" --color "0e8a16" --description "Low severity — cosmetic or minor" --force

# Feature-related labels
gh label create "feature-request" --repo "$REPO" --color "a2eeef" --description "New feature or enhancement" --force

# Triage labels
gh label create "triage-needed" --repo "$REPO" --color "e4e669" --description "Needs AI triage classification" --force
gh label create "triaged" --repo "$REPO" --color "0075ca" --description "AI triage complete" --force

# Jules AI labels
gh label create "jules-assigned" --repo "$REPO" --color "7057ff" --description "Assigned to Jules AI for automated fix" --force
gh label create "jules-fix-in-progress" --repo "$REPO" --color "d876e3" --description "Jules is working on a fix PR" --force
gh label create "jules-pr-ready" --repo "$REPO" --color "2ea44f" --description "Jules fix PR is ready for review" --force

# Source labels
gh label create "customer-reported" --repo "$REPO" --color "bfdadc" --description "Reported by a customer" --force

# Product area labels
gh label create "area/portal" --repo "$REPO" --color "c5def5" --description "Client Portal" --force
gh label create "area/billing" --repo "$REPO" --color "c5def5" --description "Billing & Stripe" --force
gh label create "area/voice" --repo "$REPO" --color "c5def5" --description "Voice Relay Engine" --force
gh label create "area/workflows" --repo "$REPO" --color "c5def5" --description "Workflow Engine" --force
gh label create "area/api" --repo "$REPO" --color "c5def5" --description "REST API & MCP" --force
gh label create "area/provisioning" --repo "$REPO" --color "c5def5" --description "Tenant Provisioning" --force
gh label create "area/agents" --repo "$REPO" --color "c5def5" --description "AI Agent Swarm" --force
gh label create "area/messaging" --repo "$REPO" --color "c5def5" --description "Omnichannel Messaging" --force
gh label create "area/ghl" --repo "$REPO" --color "c5def5" --description "GoHighLevel Integration" --force

# Status labels
gh label create "duplicate" --repo "$REPO" --color "cfd3d7" --description "Duplicate issue" --force
gh label create "wont-fix" --repo "$REPO" --color "ffffff" --description "Will not be fixed" --force
gh label create "needs-info" --repo "$REPO" --color "d876e3" --description "Needs more information from reporter" --force

echo "✅ Labels setup complete!"
gh label list --repo "$REPO"

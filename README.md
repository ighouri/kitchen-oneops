# kitchen-oneops

## Example

The following could be used in a `.kitchen.yml` to override default configuration.

```yaml
---
driver:
  name: oneops
  auth_token: [YOUR ONEOPS AUTH TOKEN]
  server_url: [YOUR ONEOPS SERVER]
  org_name: [ORG NAME YOU WOULD LIKE TO CREATE]
  assembly_name: [ASSEMBLY NAME YOU WOULD LIKE TO CREATE]
  owner_email: [ORG OWNER EMAIL]
# ...
```

## Sample `.kitchen.yml`
```yaml
---
driver:
  name: oneops
  auth_token: 'FTS4exWctNzyEyDB2oUo'
  server_url: 'https://web.dev.oneops.walmart.com'
  org_name: 'ighouri-kitchen'
  assembly_name: 'kitchen-oneops'
  owner_email: ighouri@walmartlabs.com

provisioner:
  name: chef_solo

platforms:
  - name: platform_name

suites:
  - name: suit_name
```
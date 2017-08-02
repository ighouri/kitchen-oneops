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

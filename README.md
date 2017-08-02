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

## Sample execution commands
`kitchen create
-----> Starting Kitchen (v1.16.0)
-----> Creating <suit-name-platform-name>...
       creating org now...
       creating assembly now...
       Finished creating <suit-name-platform-name> (0m2.81s).
-----> Kitchen is finished. (0m3.12s)
`

`kitchen delete
-----> Starting Kitchen (v1.16.0)
-----> Destroying <suit-name-platform-name>...
       deleting assembly now...
       deleting org now...
       Finished destroying <suit-name-platform-name> (0m2.64s).
-----> Kitchen is finished. (0m2.93s)
`
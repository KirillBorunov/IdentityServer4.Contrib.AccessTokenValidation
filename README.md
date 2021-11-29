IdentityServer4 - AccessTokenValidation
====================================================

OWIN Middleware to validate access tokens from IdentityServer v4.

This is based on the archived IdentityServer3 Access Token Validation package https://github.com/IdentityServer/IdentityServer3.AccessTokenValidation

#### What is changed:
- Updated the dependencies versions
- Added `ValidAudience` property to the options, when present it will replace the old way `/resources` audience checks
- Changed token type validation to `at+jwt`
- Default ValidationMode set to Local

#### TODO:
- Remote validation (currently only ValidationMode.Local is supported)
- Automatic audience setting based on the request URL

## Examples

```csharp
app.UseIdentityServerBearerTokenAuthentication(new IdentityServerBearerTokenAuthenticationOptions
    {
        Authority = "https://identity.identityserver.io",
        ValidAudience = "https://example.com/api"
    });
```

The middleware can also do the scope validation in one go.

```csharp
app.UseIdentityServerBearerTokenAuthentication(new IdentityServerBearerTokenAuthenticationOptions
    {
        Authority = "https://identity.identityserver.io",
        ValidAudience = "https://example.com/api",
        RequiredScopes = new[] { "api1", "api2" }
    });
```

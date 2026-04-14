# open-api
Civitek Open API Specifications

## Security

This repository documents the VeritekFL Search API and its authentication behavior. Key points:

- Authentication uses OAuth2 client credentials for machine-to-machine (M2M) access and issues short-lived JWT access tokens.
- Token endpoint (development): https://veritekfl-auth-server-dev.veritekfl.com/oauth2/token
- To obtain a token, POST to the token endpoint using HTTP Basic auth (`client_id`:`client_secret`) and a form-encoded body: `grant_type=client_credentials&scope=...`.
- For M2M, only an `access_token` is returned; refresh tokens are not issued. When the access token expires the client should request a new token using its credentials.

See `docs/veritekfl-service-api.json` for full details and examples.

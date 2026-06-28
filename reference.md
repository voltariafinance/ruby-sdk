# Reference
## Clients
<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">list_clients</a>() -> Voltaria::Types::PaginatedResponseClientResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of all clients associated with your partner account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.list_clients
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` — Field to order the results by, e.g., 'created_at:desc,updated_at:asc'
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: id, name, correlation_id, company_number, status. Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">create_client</a>(request) -> Voltaria::Types::ClientResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new client under your partner account. The client will remain in a pending state until reviewed by Winyield.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.create_client(
  name: "ACME Corp",
  jurisdiction: "eu"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**correlation_id:** `String` — The correlation ID you provided at the creation of the client
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the client
    
</dd>
</dl>

<dl>
<dd>

**type:** `Voltaria::Types::ClientTypeEnum` — The type of the client, must be one of `individual`,`corporate`. Default is `corporate` if not provided.
    
</dd>
</dl>

<dl>
<dd>

**jurisdiction:** `Voltaria::Types::JurisdictionEnum` — The jurisdiction of the client, must be one of `eu`, `us`, `uk`
    
</dd>
</dl>

<dl>
<dd>

**company_number:** `String` — The company number of the client if type is `corporate`
    
</dd>
</dl>

<dl>
<dd>

**data:** `Internal::Types::Hash[String, Object]` — Additional data associated with the client
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">create_client_data</a>(request) -> Voltaria::Types::ClientDataResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Upload supplementary client information, such as bank account balance, accounting figures, or other relevant details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.create_client_data(
  client_id: "client_123",
  data: {}
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**data:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">list_limit_requests</a>() -> Voltaria::Types::PaginatedResponseLimitRequestResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of all limit requests associated with your partner account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.list_limit_requests
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` — Filter by client ID
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` — Field to order the results by, e.g., 'created_at:desc,updated_at:asc'
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: id, client_id. Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">create_limit_request</a>(request) -> Voltaria::Types::LimitRequestResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a limit review request for a client. The request will remain in a pending state until reviewed by Winyield.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.create_limit_request(
  client_id: "client_1234567890abcdef",
  requested_limit: 1.1,
  reason: "Need more credit for business expansion"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` — The ID of the client for which the limit request is being created
    
</dd>
</dl>

<dl>
<dd>

**requested_limit:** `Voltaria::Clients::Types::LimitRequestCreatePayloadRequestedLimit` — The requested credit limit amount
    
</dd>
</dl>

<dl>
<dd>

**reason:** `String` — The reason for the limit request
    
</dd>
</dl>

<dl>
<dd>

**waiver_request:** `Internal::Types::Boolean` — Whether a special waiver is requested alongside this limit request
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">get_limit_request</a>(request_id) -> Voltaria::Types::LimitRequestResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a specific limit request by its ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.get_limit_request(request_id: "request_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">list_onboarding_clients</a>() -> Voltaria::Types::PaginatedResponseClientResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all clients that have self-registered via the portal and are awaiting partner approval.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.list_onboarding_clients
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">approve_onboarding</a>(client_id) -> Voltaria::Types::ClientResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Accept a self-onboarded client. The client status moves to 'pending' and the owner's portal account is activated so they can begin submitting documents.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.approve_onboarding(client_id: "client_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">reject_onboarding</a>(client_id) -> Voltaria::Types::ClientResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reject a self-onboarded client. The client record is kept with 'rejected' status for audit history and is not deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.reject_onboarding(client_id: "client_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">add_client_portal_user</a>(client_id, request) -> Voltaria::Types::ClientUserResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Invite a new user to a client's portal account. The invited user will receive an email with a one-time link to set their password. Partner can assign any role: 'owner', 'admin', or 'viewer'.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.add_client_portal_user(
  client_id: "client_id",
  first_name: "first_name",
  last_name: "last_name",
  email: "email",
  role_type: "role_type"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**first_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**last_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**phone:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**role_type:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">list_client_waivers</a>(client_id) -> Voltaria::Types::PaginatedResponseWaiverResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all waivers associated with a specific client.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.list_client_waivers(client_id: "client_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` — Field to order the results by, e.g., 'created_at:desc'
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: id, client_id, status. Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">get_client_by_id</a>(client_id) -> Voltaria::Types::ClientResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve detailed information for a specific client using their client ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.get_client_by_id(client_id: "client_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">delete_client</a>(client_id) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a client by ID. Only clients with 'pending' status can be deleted. All client's loans must also be in 'pending' status.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.delete_client(client_id: "client_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.clients.<a href="/lib/voltaria/clients/client.rb">list_client_checklist_summaries</a>(client_id) -> Voltaria::Types::PaginatedResponseChecklistSummaryPartnerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve the checklist summaries for one of your clients, including the AI description and item completion counts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.clients.list_client_checklist_summaries(client_id: "client_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Clients::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Sandbox
<details><summary><code>client.sandbox.<a href="/lib/voltaria/sandbox/client.rb">update_client</a>(client_id, request) -> Voltaria::Types::ClientResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update an existing client's status or credit limit using their client ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sandbox.update_client(client_id: "client_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Voltaria::Types::ClientStatusEnum` — The status of the client. One of the following: `active, rejected, deactivated, pending, pending_onboarding, pre_approved, deleted, inactive`
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Voltaria::Sandbox::Types::ClientUpdateSandboxLimit` — The limit to set for the client. This will override the existing limit.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Sandbox::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sandbox.<a href="/lib/voltaria/sandbox/client.rb">update_loan</a>(loan_id, request) -> Voltaria::Types::LoanResponseWithInstallments</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update the status of a specific loan using its unique loan ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sandbox.update_loan(loan_id: "loan_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**loan_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Voltaria::Types::LoanStatusEnum` — The status of the client. One of the following: `pending, overdue, active, default, sold, restructured, repaid, pre_approved, rejected, deleted, inactive`
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Sandbox::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sandbox.<a href="/lib/voltaria/sandbox/client.rb">webhook_test</a>(request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Test a webhook subscription by ID or trigger all by event type.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sandbox.webhook_test(event_type: "loan.updated")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**webhook_id:** `String` — The ID of the webhook subscription. Only this webhook will be triggered if provided.
    
</dd>
</dl>

<dl>
<dd>

**event_type:** `Voltaria::Types::WebhookEventTypeEnum` — Event type to trigger for the test. All subscriptions for this event type will be triggered if webhook_id is not provided.Possible values: loan_updated, installment_updated, client_updated, client_limit_updated, partner_limit_updated
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Sandbox::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Accounts
<details><summary><code>client.accounts.<a href="/lib/voltaria/accounts/client.rb">list_client_account_fields</a>(client_id) -> Internal::Types::Hash[String, Voltaria::Types::CurrencyFieldSpec]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the required and optional bank account fields for each supported currency. Fetch once and cache; use it to build the create-account request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.list_client_account_fields(client_id: "client_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Accounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.accounts.<a href="/lib/voltaria/accounts/client.rb">list_client_accounts</a>(client_id) -> Voltaria::Types::PaginatedResponseClientAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all bank accounts for one of your clients.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.list_client_accounts(client_id: "client_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Accounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.accounts.<a href="/lib/voltaria/accounts/client.rb">create_client_account</a>(client_id, request) -> Voltaria::Types::ClientAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a bank account for one of your clients. The account is registered with the payment provider immediately. Use the `status` field to create it as `active` (default; demotes any existing active account in the same currency to `passive`) or `passive`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.create_client_account(
  client_id: "client_id",
  account_holder_name: "Acme Ltd",
  account_holder_type: "business",
  currency: "gbp",
  sort_code: "40-47-84",
  account_number: "12345678"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**account_holder_name:** `String` — Full name of the account holder.
    
</dd>
</dl>

<dl>
<dd>

**label:** `String` — Optional label / nickname for the account (max 50 characters).
    
</dd>
</dl>

<dl>
<dd>

**account_holder_type:** `Voltaria::Types::AccountHolderTypeEnum` — Account holder type. One of: `business`, `private`.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `Voltaria::Types::CurrencyEnum` — ISO 4217 currency code. Use `/accounts/fields` to get required fields per currency.
    
</dd>
</dl>

<dl>
<dd>

**sort_code:** `String` — Sort code (required for GBP).
    
</dd>
</dl>

<dl>
<dd>

**account_number:** `String` — Account number (required for GBP and USD).
    
</dd>
</dl>

<dl>
<dd>

**iban:** `String` — IBAN (required for EUR, CZK, PLN).
    
</dd>
</dl>

<dl>
<dd>

**bic:** `String` — BIC / SWIFT code (optional for EUR).
    
</dd>
</dl>

<dl>
<dd>

**routing_number:** `String` — ABA routing number (required for USD).
    
</dd>
</dl>

<dl>
<dd>

**account_type:** `String` — Account type (required for USD). E.g. `checking` or `savings`.
    
</dd>
</dl>

<dl>
<dd>

**address:** `Voltaria::Types::AccountAddress` — Account holder address (required for USD).
    
</dd>
</dl>

<dl>
<dd>

**status:** `Voltaria::Accounts::Types::PartnerClientAccountCreateRequestStatus` — Account status. `active` demotes any existing active account in the same currency to `passive`; `passive` is added as a backup. Defaults to `active`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Accounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.accounts.<a href="/lib/voltaria/accounts/client.rb">get_client_account</a>(client_id, account_id) -> Voltaria::Types::ClientAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a specific bank account for one of your clients.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.get_client_account(
  client_id: "client_id",
  account_id: "account_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Accounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Documents
<details><summary><code>client.documents.<a href="/lib/voltaria/documents/client.rb">list_documents</a>() -> Voltaria::Types::PaginatedResponseDocumentResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all documents linked to a client.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.list_documents
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**loan_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**installment_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**waterfall_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` — Field to order the results by, e.g., 'created_at:desc,updated_at:asc'
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: id, client_id, loan_id, installment_id, waterfall_id, category, file_name, document_date, folder_path. Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.<a href="/lib/voltaria/documents/client.rb">upload_document</a>(request) -> Voltaria::Types::DocumentResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Upload a new document related to a client or loan, such as financial statements or KYC files.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.upload_document
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**loan_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**installment_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**waterfall_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.<a href="/lib/voltaria/documents/client.rb">get_available_document_categories</a>() -> Voltaria::Types::AvailableDocumentCategoriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all available document categories.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.get_available_document_categories
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Voltaria::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.<a href="/lib/voltaria/documents/client.rb">get_document_by_id</a>(document_id) -> Voltaria::Types::DocumentResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve details for a specific document using its document ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.get_document_by_id(document_id: "document_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**document_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.<a href="/lib/voltaria/documents/client.rb">delete_document</a>(document_id) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific document by using its document ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.delete_document(document_id: "document_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**document_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Investors
<details><summary><code>client.investors.<a href="/lib/voltaria/investors/client.rb">investor_list_clients</a>() -> Voltaria::Types::PaginatedResponseClientInvestorResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all clients with at least one loan funded by this investor.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.investors.investor_list_clients
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: id, name, correlation_id, company_number, status. Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Investors::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.investors.<a href="/lib/voltaria/investors/client.rb">investor_get_client</a>(client_id) -> Voltaria::Types::ClientInvestorResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a specific client that has a loan funded by this investor.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.investors.investor_get_client(client_id: "client_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Investors::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.investors.<a href="/lib/voltaria/investors/client.rb">investor_list_loans</a>() -> Voltaria::Types::PaginatedResponseLoanInvestorResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all loans funded by the current investor.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.investors.investor_list_loans
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: id, partner_id, client_id, status, loan_date, currency, partner.name, client.name. Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Investors::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.investors.<a href="/lib/voltaria/investors/client.rb">investor_get_loan</a>(loan_id) -> Voltaria::Types::LoanResponseWithInstallments</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a specific loan funded by the current investor, with its installments.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.investors.investor_get_loan(loan_id: "loan_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**loan_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Investors::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.investors.<a href="/lib/voltaria/investors/client.rb">investor_list_installments</a>() -> Voltaria::Types::PaginatedResponseInstallmentResponseWithClientInfo</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all installments for loans funded by the current investor.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.investors.investor_list_installments
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**loan_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: id, client_id, loan_id, status, client.name, expected_repayment_at. Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Investors::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.investors.<a href="/lib/voltaria/investors/client.rb">investor_get_installment</a>(installment_id) -> Voltaria::Types::InstallmentResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a specific installment for a loan funded by the current investor.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.investors.investor_get_installment(installment_id: "installment_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**installment_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Investors::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.investors.<a href="/lib/voltaria/investors/client.rb">investor_list_repayments</a>() -> Voltaria::Types::PaginatedResponseRepaymentResponseWithClientInfo</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all repayment logs for loans funded by the current investor.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.investors.investor_list_repayments
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**loan_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**installment_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: id, client_id, loan_id, installment_id, created_at, client.name, client.correlation_id. Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Investors::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Installments
<details><summary><code>client.installments.<a href="/lib/voltaria/installments/client.rb">list_installments</a>() -> Voltaria::Types::PaginatedResponseInstallmentResponseWithClientInfo</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of all loan installments under your partner account. Supports optional filtering by loan or client.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.installments.list_installments
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**loan_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` — Field to order the results by, e.g., 'created_at:desc,updated_at:asc'
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: id, client_id, loan_id, status, client.name, expected_repayment_at. Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Installments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.installments.<a href="/lib/voltaria/installments/client.rb">add_installment</a>(request) -> Internal::Types::Array[Voltaria::Types::InstallmentResponse]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add new installments to a loan with its specific loan ID. This endpoint is available to select partners and will trigger the recalculation of the IRR and interest amounts for all installments of the loan.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.installments.add_installment(
  loan_id: "loan_12345",
  installments: [{
    expected_repayment_at: "2025-12-01",
    amount: "1000.00"
  }, {
    expected_repayment_at: "2026-01-01",
    amount: "1000.00"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**loan_id:** `String` — The loan ID to add the installments to
    
</dd>
</dl>

<dl>
<dd>

**installments:** `Internal::Types::Array[Voltaria::Types::LoanInstallmentCreatePayload]` — List of installments to add to the loan
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Installments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.installments.<a href="/lib/voltaria/installments/client.rb">list_payment_promises</a>() -> Voltaria::Types::PaginatedResponsePaymentPromiseResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of payment promises recorded for installments under your partner account. Supports optional filtering by loan or client.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.installments.list_payment_promises
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` — Field to order the results by, e.g., 'created_at:desc,updated_at:asc'
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: id, installment_id, status, promised_date, created_at. Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**loan_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Installments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.installments.<a href="/lib/voltaria/installments/client.rb">create_payment_promise</a>(request) -> Voltaria::Types::PaymentPromiseResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record a payment promise made by a client for one of their installments. The promised date must be today or in the future.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.installments.create_payment_promise(
  installment_id: "inst_12345",
  amount: 1.1,
  promised_date: "2026-05-15"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**installment_id:** `String` — The ID of the installment this promise relates to
    
</dd>
</dl>

<dl>
<dd>

**amount:** `Voltaria::Installments::Types::PaymentPromiseCreatePayloadAmount` — The amount the client has promised to pay (must be > 0)
    
</dd>
</dl>

<dl>
<dd>

**promised_date:** `String` — The date the client has committed to pay by (today or future)
    
</dd>
</dl>

<dl>
<dd>

**notes:** `String` — Optional notes captured during the collections interaction
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Installments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.installments.<a href="/lib/voltaria/installments/client.rb">get_installment_by_id</a>(installment_id) -> Voltaria::Types::InstallmentResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve detailed information for a specific installment using its installment ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.installments.get_installment_by_id(installment_id: "installment_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**installment_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Installments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.installments.<a href="/lib/voltaria/installments/client.rb">edit_installment</a>(installment_id, request) -> Voltaria::Types::InstallmentResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update an installment's amount and expected repayment date with its specific installment ID. This endpoint is available to select partners and will trigger the recalculation of the IRR and interest amounts for all installments of the loan.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.installments.edit_installment(
  installment_id: "installment_id",
  amount: 1.1,
  expected_repayment_at: "2025-12-01"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**installment_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**amount:** `Voltaria::Installments::Types::InstallmentEditPayloadAmount` — The new amount for the installment
    
</dd>
</dl>

<dl>
<dd>

**expected_repayment_at:** `String` — The new expected repayment date
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Installments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.installments.<a href="/lib/voltaria/installments/client.rb">delete_installment</a>(installment_id) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete an installment with its specific installment ID. This endpoint is available to select partners and will trigger the recalculation of the IRR and interest amounts for all installments of the loan.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.installments.delete_installment(installment_id: "installment_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**installment_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Installments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Loans
<details><summary><code>client.loans.<a href="/lib/voltaria/loans/client.rb">list_loans</a>() -> Voltaria::Types::PaginatedResponseLoanResponseWithClientInfo</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all loans associated with your partner account. Supports optional filtering by client ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.loans.list_loans
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` — Field to order the results by, e.g., 'created_at:desc,updated_at:asc'
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: id, client_id, status, client.name, correlation_id. Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Loans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.loans.<a href="/lib/voltaria/loans/client.rb">create_loan</a>(request) -> Voltaria::Types::LoanResponseWithInstallments</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new loan for an approved client with an active credit limit.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.loans.create_loan(
  client_id: "client_ACME",
  currency: "eur",
  amount: 1.1,
  installments: [{
    expected_repayment_at: "2025-12-01",
    amount: 1.1
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` — The ID of the client for this loan
    
</dd>
</dl>

<dl>
<dd>

**currency:** `Voltaria::Types::CurrencyEnum` — The currency of the loan, must be one of the supported currencies: eur, gbp, usd, czk, pln, isk
    
</dd>
</dl>

<dl>
<dd>

**amount:** `Voltaria::Loans::Types::LoanCreatePayloadAmount` — The amount of the loan
    
</dd>
</dl>

<dl>
<dd>

**correlation_id:** `String` — The correlation ID you provided at the creation of the loan
    
</dd>
</dl>

<dl>
<dd>

**loan_date:** `String` — Please provide the loan_date if it differs from the loan creation time (created_at). Otherwise, it will be automatically set.
    
</dd>
</dl>

<dl>
<dd>

**installments:** `Internal::Types::Array[Voltaria::Types::LoanInstallmentCreatePayload]` — List of installments for the loan, each with a due date and amount
    
</dd>
</dl>

<dl>
<dd>

**data:** `Internal::Types::Hash[String, Object]` — Additional data related to the loan
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Loans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.loans.<a href="/lib/voltaria/loans/client.rb">get_loan_by_id</a>(loan_id) -> Voltaria::Types::LoanResponseWithInstallments</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve detailed information about a specific loan by its loan ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.loans.get_loan_by_id(loan_id: "loan_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**loan_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Loans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.loans.<a href="/lib/voltaria/loans/client.rb">delete_loan</a>(loan_id) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a loan by ID. Only loans with 'pending' status can be deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.loans.delete_loan(loan_id: "loan_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**loan_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Loans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.loans.<a href="/lib/voltaria/loans/client.rb">create_bulk_loans</a>(request) -> Voltaria::Types::BulkLoanTaskResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create multiple loans in a single request. Processing happens asynchronously. Returns a task ID for tracking progress.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.loans.create_bulk_loans(loans: [{
  client_id: "client_123",
  currency: "eur",
  amount: "50000.00",
  correlation_id: "LOAN_001",
  loan_date: "2023-05-01",
  installments: [{
    expected_repayment_at: "2023-06-01",
    amount: "26000.00"
  }, {
    expected_repayment_at: "2023-07-01",
    amount: "26000.00"
  }],
  data: {}
}])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**loans:** `Internal::Types::Array[Voltaria::Types::BulkLoanItemPayload]` — List of loans to create (max 1000)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Loans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.loans.<a href="/lib/voltaria/loans/client.rb">get_bulk_loan_status</a>(task_id) -> Voltaria::Types::BulkLoanTaskStatus</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Check the status of a bulk loan creation task and retrieve results when completed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.loans.get_bulk_loan_status(task_id: "task_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**task_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Loans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.loans.<a href="/lib/voltaria/loans/client.rb">set_loan_default</a>(loan_id, request) -> Voltaria::Types::LoanResponseWithInstallments</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Mark a loan as defaulted, recording the default date and the amount recovered from selling it. Defaults the loan's active and overdue installments and updates the loan status accordingly.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.loans.set_loan_default(
  loan_id: "loan_id",
  default_date: "2026-06-23",
  sold_amount: 1.1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**loan_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**default_date:** `String` — Date the loan is marked as defaulted.
    
</dd>
</dl>

<dl>
<dd>

**sold_amount:** `Voltaria::Loans::Types::LoanDefaultPayloadSoldAmount` — Amount recovered when the defaulted loan is sold.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Loans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Partners
<details><summary><code>client.partners.<a href="/lib/voltaria/partners/client.rb">get_available_funding</a>() -> Internal::Types::Array[Voltaria::Types::AvailableFunding]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Use this endpoint to check the available funding capacity in your dedicated lending account before initiating a new loan or submitting a drawdown request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.partners.get_available_funding
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Voltaria::Partners::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/lib/voltaria/partners/client.rb">create_partner_data</a>(request) -> Voltaria::Types::PartnerDataResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Upload supplementary partner information, such as bank account balance, accounting figures, or other relevant details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.partners.create_partner_data(data: {})
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**data:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Partners::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/lib/voltaria/partners/client.rb">list_partner_waterfalls</a>() -> Voltaria::Types::PaginatedResponseWaterfallResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Use this endpoint to get the list of waterfalls for your dedicated lending account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.partners.list_partner_waterfalls
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` — Field to order the results by, e.g., 'created_at:desc,updated_at:asc'
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: id, name, date, status, created_at, updated_at. Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Partners::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Webhooks
<details><summary><code>client.webhooks.<a href="/lib/voltaria/webhooks/client.rb">list_webhook_subscriptions</a>() -> Voltaria::Types::PaginatedResponseWebhookSubscriptionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List all webhook subscriptions for your partner account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.list_webhook_subscriptions
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**event_type:** `Voltaria::Types::WebhookEventTypeEnum` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/voltaria/webhooks/client.rb">create_webhook_subscription</a>(request) -> Voltaria::Types::WebhookSubscriptionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new webhook subscription for a specific event type.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.create_webhook_subscription(
  url: "https://example.com/webhooks",
  description: "Loan update event",
  event_type: "loan.updated",
  secret: "whsec_f3o9p8h7g6j5k4l3m2n1o0p9i8u7y6t5",
  retry_: false,
  status: "active"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**url:** `String` — The URL to send webhooks to
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Optional description of this webhook endpoint
    
</dd>
</dl>

<dl>
<dd>

**event_type:** `Voltaria::Types::WebhookEventTypeEnum` — Event type to subscribe toPossible values: loan_updated, installment_updated, client_updated, client_limit_updated, partner_limit_updated
    
</dd>
</dl>

<dl>
<dd>

**secret:** `String` — Secret for signing webhook payloads
    
</dd>
</dl>

<dl>
<dd>

**retry_:** `Internal::Types::Boolean` — Whether to retry failed webhooks
    
</dd>
</dl>

<dl>
<dd>

**status:** `Voltaria::Types::WebhookStatusEnum` — Status of the webhook subscription. Defaults to 'active'.Possible values: active, paused, disabled
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/voltaria/webhooks/client.rb">get_webhook_subscription</a>(webhook_id) -> Voltaria::Types::WebhookSubscriptionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve details for a specific webhook subscription with its webhook ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.get_webhook_subscription(webhook_id: "webhook_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**webhook_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/voltaria/webhooks/client.rb">update_webhook_subscription</a>(webhook_id, request) -> Voltaria::Types::WebhookSubscriptionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a webhook subscription with its specific webhook ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.update_webhook_subscription(
  webhook_id: "webhook_id",
  url: "https://example.com/webhooks/v2",
  description: "Updated webhook endpoint",
  event_type: "installment.updated",
  status: "paused",
  retry_: true,
  secret: "whsec_updated_secret_here"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**webhook_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The URL to send webhooks to
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Description of this webhook endpoint
    
</dd>
</dl>

<dl>
<dd>

**event_type:** `Voltaria::Types::WebhookEventTypeEnum` — Event type to subscribe toPossible values: loan_updated, installment_updated, client_updated, client_limit_updated, partner_limit_updated
    
</dd>
</dl>

<dl>
<dd>

**status:** `Voltaria::Types::WebhookStatusEnum` — Status of the webhook subscriptionPossible values: active, paused, disabled
    
</dd>
</dl>

<dl>
<dd>

**retry_:** `Internal::Types::Boolean` — Whether to retry failed webhooks
    
</dd>
</dl>

<dl>
<dd>

**secret:** `String` — Secret for signing webhook payloads
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/voltaria/webhooks/client.rb">delete_webhook_subscription</a>(webhook_id) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific webhook subscription.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.delete_webhook_subscription(webhook_id: "webhook_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**webhook_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/voltaria/webhooks/client.rb">list_webhook_logs</a>() -> Voltaria::Types::PaginatedResponseWebhookLogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all webhook logs linked to your partner account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.list_webhook_logs
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**webhook_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Repayments
<details><summary><code>client.repayments.<a href="/lib/voltaria/repayments/client.rb">list_repayment_logs</a>() -> Voltaria::Types::PaginatedResponseRepaymentResponseWithClientInfo</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all repayments made under your partner account. Supports filtering by client, loan, or installments.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.repayments.list_repayment_logs
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**loan_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**installment_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` — Field to order the results by, e.g., 'created_at:desc,updated_at:asc'
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: id, client_id, loan_id, installment_id, created_at, client.name, client.correlation_id. Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Repayments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.repayments.<a href="/lib/voltaria/repayments/client.rb">create_repayment</a>(request) -> Voltaria::Types::RepaymentResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new repayment log for an installment. Requires the installment ID, loan ID or loan correlation ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.repayments.create_repayment(amount: 1.1)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**installment_id:** `String` — ID of the installment
    
</dd>
</dl>

<dl>
<dd>

**loan_id:** `String` — ID of the associated Loan
    
</dd>
</dl>

<dl>
<dd>

**correlation_id:** `String` — Correlation ID of associated loan
    
</dd>
</dl>

<dl>
<dd>

**amount:** `Voltaria::Repayments::Types::RepaymentCreatePayloadAmount` — The amount of payment made for installment
    
</dd>
</dl>

<dl>
<dd>

**repayment_date:** `String` — Please provide the repayment_date if it differs from the time you log this repayment. Otherwise, it will be automatically set.
    
</dd>
</dl>

<dl>
<dd>

**data:** `Internal::Types::Hash[String, Object]` — Additional metadata related to the repayment
    
</dd>
</dl>

<dl>
<dd>

**is_early_settlement:** `Internal::Types::Boolean` — Indicates if this repayment is for early settlement
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Repayments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.repayments.<a href="/lib/voltaria/repayments/client.rb">create_bulk_repayments</a>(request) -> Voltaria::Types::BulkRepaymentTaskResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Initiate processing of up to 10000 repayment logs. Returns task_id for tracking progress.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.repayments.create_bulk_repayments(repayments: [{
  amount: "1000.00",
  repayment_date: "2023-10-01T12:00:00Z",
  data: {},
  installment_id: "installment_123"
}, {
  amount: "500.50",
  data: {},
  loan_id: "loan_456"
}, {
  amount: "750.00",
  repayment_date: "2023-09-30T15:30:00Z",
  correlation_id: "LOAN-789"
}])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**repayments:** `Internal::Types::Array[Voltaria::Types::BulkRepaymentItemPayload]` — List of repayments to create (max 10000)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Repayments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.repayments.<a href="/lib/voltaria/repayments/client.rb">get_bulk_repayment_status</a>(task_id) -> Voltaria::Types::BulkRepaymentTaskStatus</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Check the progress and results of a bulk repayment processing task.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.repayments.get_bulk_repayment_status(task_id: "task_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**task_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Repayments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Drawdowns
<details><summary><code>client.drawdowns.<a href="/lib/voltaria/drawdowns/client.rb">list_drawdowns</a>() -> Voltaria::Types::PaginatedResponseDrawdownResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of drawdowns.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.drawdowns.list_drawdowns
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` — Field to order the results by, e.g., 'created_at:desc,updated_at:asc'
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: . Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Drawdowns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.drawdowns.<a href="/lib/voltaria/drawdowns/client.rb">create_drawdown_request</a>(request) -> Voltaria::Types::DrawdownResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new drawdown request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.drawdowns.create_drawdown_request(amount: 1.1)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**amount:** `Voltaria::Drawdowns::Types::DrawdownCreatePayloadAmount` — The amount for the drawdown.
    
</dd>
</dl>

<dl>
<dd>

**drawdown_date:** `String` — The date for the drawdown. If not provided, defaults to the current date and time.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Drawdowns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.drawdowns.<a href="/lib/voltaria/drawdowns/client.rb">list_drawdown_checklists</a>(drawdown_id) -> Voltaria::Types::PaginatedResponseDrawdownChecklistResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve all checklist items for a specific drawdown
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.drawdowns.list_drawdown_checklists(drawdown_id: "drawdown_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**drawdown_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**order_by:** `String` — Field to order the results by, e.g., 'created_at:desc,updated_at:asc'
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Query string for filtering. Format: "field:operator:value;...". Supported fields: . Supported operators: is, in, not_in, contains, not_contains, like, not_like, ilike, not_ilike, gt, gte, lt, lte, starts_with, ends_with, is_null, is_not_null.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Voltaria::Drawdowns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>


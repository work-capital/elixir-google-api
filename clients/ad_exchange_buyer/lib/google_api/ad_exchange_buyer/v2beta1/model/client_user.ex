# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.ClientUser do
  @moduledoc """
  A client user is created under a client buyer and has restricted access to the Ad Exchange Marketplace and certain other sections of the Ad Exchange Buyer UI based on the role granted to the associated client buyer.  The only way a new client user can be created is via accepting an email invitation (see the accounts.clients.invitations.create method).  All fields are required unless otherwise specified.

  ## Attributes

  - clientAccountId (String): Numerical account ID of the client buyer with which the user is associated; the buyer must be a client of the current sponsor buyer. The value of this field is ignored in an update operation. Defaults to: `null`.
  - email (String): User&#39;s email address. The value of this field is ignored in an update operation. Defaults to: `null`.
  - status (String): The status of the client user. Defaults to: `null`.
    - Enum - one of [USER_STATUS_UNSPECIFIED, PENDING, ACTIVE, DISABLED]
  - userId (String): The unique numerical ID of the client user that has accepted an invitation. The value of this field is ignored in an update operation. Defaults to: `null`.
  """

  defstruct [
    :"clientAccountId",
    :"email",
    :"status",
    :"userId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ClientUser do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ClientUser do
  def encode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end


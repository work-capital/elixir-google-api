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

defmodule GoogleApi.OSLogin.V1alpha.Model.SshPublicKey do
  @moduledoc """
  The SSH public key information associated with a Directory API User.

  ## Attributes

  - expirationTimeUsec (String): An expiration time in microseconds since epoch. Defaults to: `null`.
  - fingerprint (String): [Output Only] The SHA-256 fingerprint of the SSH public key. Defaults to: `null`.
  - key (String): Public key text in SSH format, defined by &lt;a href&#x3D;\&quot;https://www.ietf.org/rfc/rfc4253.txt\&quot; target&#x3D;\&quot;_blank\&quot;&gt;RFC4253&lt;/a&gt; section 6.6. Defaults to: `null`.
  """

  defstruct [
    :"expirationTimeUsec",
    :"fingerprint",
    :"key"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.OSLogin.V1alpha.Model.SshPublicKey do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSLogin.V1alpha.Model.SshPublicKey do
  def encode(value, options) do
    GoogleApi.OSLogin.V1alpha.Deserializer.serialize_non_nil(value, options)
  end
end


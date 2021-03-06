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

defmodule GoogleApi.YouTube.V3.Model.Playlist do
  @moduledoc """
  A playlist resource represents a YouTube playlist. A playlist is a collection of videos that can be viewed sequentially and shared with other users. A playlist can contain up to 200 videos, and YouTube does not limit the number of playlists that each user creates. By default, playlists are publicly visible to other users, but playlists can be public or private.  YouTube also uses playlists to identify special collections of videos for a channel, such as:   - uploaded videos  - favorite videos  - positively rated (liked) videos  - watch history  - watch later  To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company&#39;s videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the  channel resource for a given channel.  You can then use the   playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the   playlistItems.insert and   playlistItems.delete methods.

  ## Attributes

  - contentDetails (PlaylistContentDetails): The contentDetails object contains information like video count. Defaults to: `null`.
  - etag (String.t): Etag of this resource. Defaults to: `null`.
  - id (String.t): The ID that YouTube uses to uniquely identify the playlist. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;youtube#playlist\&quot;. Defaults to: `null`.
  - localizations (%{optional(String.t) &#x3D;&gt; PlaylistLocalization}): Localizations for different languages Defaults to: `null`.
  - player (PlaylistPlayer): The player object contains information that you would use to play the playlist in an embedded player. Defaults to: `null`.
  - snippet (PlaylistSnippet): The snippet object contains basic details about the playlist, such as its title and description. Defaults to: `null`.
  - status (PlaylistStatus): The status object contains status information for the playlist. Defaults to: `null`.
  """

  defstruct [
    :contentDetails,
    :etag,
    :id,
    :kind,
    :localizations,
    :player,
    :snippet,
    :status
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.Playlist do
  import GoogleApi.YouTube.V3.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :contentDetails,
      :struct,
      GoogleApi.YouTube.V3.Model.PlaylistContentDetails,
      options
    )
    |> deserialize(:localizations, :map, GoogleApi.YouTube.V3.Model.PlaylistLocalization, options)
    |> deserialize(:player, :struct, GoogleApi.YouTube.V3.Model.PlaylistPlayer, options)
    |> deserialize(:snippet, :struct, GoogleApi.YouTube.V3.Model.PlaylistSnippet, options)
    |> deserialize(:status, :struct, GoogleApi.YouTube.V3.Model.PlaylistStatus, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.Playlist do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end

--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/core/concat.ts

local ApolloLink = require(script.Parent.ApolloLink).ApolloLink

return {
	concat = ApolloLink.concat_,
}
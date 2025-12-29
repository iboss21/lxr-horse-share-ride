--[[
    ════════════════════════════════════════════════════════════════
    The Land of Wolves RP - Horse & Wagon Sharing Script
    Professional Production Edition
    www.wolves.land
    ════════════════════════════════════════════════════════════════
]]--

fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

name 'The Land of Wolves RP - Horse Sharing'
author 'The Land of Wolves RP - www.wolves.land'
description 'Professional horse and wagon sharing script for RedM - Framework independent, highly optimized, production-ready'
version '1.1.1'

-- Script Information
lua54 'yes'

-- Shared Configuration
shared_script 'config.lua'

-- Client Scripts
client_script 'client/client.lua'

-- Server Scripts
server_script 'server/server.lua'

-- Dependencies (None - Fully Standalone)
-- This script works with ALL frameworks without any dependencies
-- All notification systems (ox_lib, vorp, rsg, etc) are configured in config.lua

-- Support & Documentation
-- Website: www.wolves.land
-- Discord: Available on website
-- Documentation: See README.md

-- Performance Metrics (Tested on production servers)
-- Client: ~0.00ms idle, ~0.01ms active
-- Server: ~0.00ms (event-driven)
-- Memory: < 0.5 MB

-- Escrow Protection Ready
-- This manifest is configured for potential escrow protection
-- escrow_ignore {
--     'config.lua',
--     'README.md'
-- }

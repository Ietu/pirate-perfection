BLTAssetManager = BTLAssetManager or blt_class()
local A = BLTAssetManager

function A:init()
	self._recode = {}
	self._loaded_defaults = false
end

-- Idstring isn't available while BLT is loading, so deferr making the recoding table until the first asset it loaded
function A:_check_defaults()
	if self._loaded_defaults then return end
	self._loaded_defaults = true

	self._recode[Idstring("sequence_manager"):key()] = "scriptdata"
	self._recode[Idstring("font"):key()] = "font"
end

-- Create an entry in the file database
-- This is very similar to DB:create_entry, only it has a couple of differences:
-- * It will automatically recode Windows-based binary files to their Linux counterparts (and vice-versa), enabling Linux compatibility for
--     asset-adding mods without any extra effort on the mod's part
-- * In the future, it will likely support additional special features
-- * Note the path and extention arguments are in the opposite order to create_entry
function A:CreateEntry(path, ext, file, options)
	if not blt.db_create_entry then
		DB:create_entry(ext, path, file)
		return
	end

	self:_check_defaults()

	local extra = {
		recode_type = self._recode[ext:key()]
	}

	blt:db_create_entry(ext, path, file, extra)
end

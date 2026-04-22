minetest.after(0, function()

    if not lcdlib then return end

    local STEP = 6

    for _, font in pairs(lcdlib.registered_fonts) do

        font.widths = font.widths or {}

        -- кирилиця
        for code = 0x0400, 0x04FF do
            font.widths[code] = STEP
        end

        -- українські символи
        font.widths[0x0456] = STEP
        font.widths[0x0406] = STEP
        font.widths[0x0491] = STEP
        font.widths[0x0490] = STEP
        font.widths[0x0454] = STEP
        font.widths[0x0404] = STEP

    end

    minetest.log("action", "[lcd_fix] safe monospace applied")

end)

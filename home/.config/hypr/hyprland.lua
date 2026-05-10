local modules = { -- these modules will be loaded in the exact order you put them in
	"globals";
	"startup";
	"monitors";
	"general";
	"decoration";
	"binds";
	"devices";
	"gestures";
	"rules";
	"plugins";
	"misc";
}

for _, v in pairs(modules) do
	pcall(require, "./hyprland/"..v)
end
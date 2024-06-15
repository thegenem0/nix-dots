MKDIR=mkdir -p
RMDIR=rm -rf
LN=ln -vsf
CP=cp -v

LOCAL_HOME=$(PWD)/home
LOCAL_CONFIG=$(PWD)/$(XDGHOME)/.config
LOCAL_SSH=$(PWD)/$(XDGHOME)/.ssh

XDGHOME=$(HOME)
XDGBASE=$(XDGHOME)/.config
SSHBASE=$(XDGHOME)/.ssh


.PHONY: all

all: settings dunst fastfetch gtk hypr kitty nvim rofi wal waybar xsettings zsh starship ssh dev home

settings:
	@echo "Setting up settings..."
	$(RMDIR) $(XDGBASE)/.settings
	$(LN) $(LOCAL_CONFIG)/.settings $(XDGBASE)/.settings

dunst:
	@echo "Setting up dunst..."
	$(RMDIR) $(XDGBASE)/dunst
	$(LN) $(LOCAL_CONFIG)/dunst $(XDGBASE)/dunst

fastfetch:
	@echo "Setting up fastfetch..."
	$(RMDIR) $(XDGBASE)/fastfetch
	$(LN) $(LOCAL_CONFIG)/fastfetch $(XDGBASE)/fastfetch

gtk:
	@echo "Setting up gtk..."
	$(RMDIR) $(XDGBASE)/gtk-3.0
	$(RMDIR) $(XDGBASE)/gtk-4.0
	$(LN) $(LOCAL_CONFIG)/gtk-3.0 $(XDGBASE)/gtk-3.0
	$(LN) $(LOCAL_CONFIG)/gtk-4.0 $(XDGBASE)/gtk-4.0

hypr:
	@echo "Setting up hyprland..."
	$(RMDIR) $(XDGBASE)/hypr
	$(LN) $(LOCAL_CONFIG)/hypr $(XDGBASE)/hypr

kitty:
	@echo "Setting up kitty..."
	$(RMDIR) $(XDGBASE)/kitty
	$(LN) $(LOCAL_CONFIG)/kitty $(XDGBASE)/kitty

nvim:
	@echo "Setting up nvim..."
	$(RMDIR) $(XDGBASE)/nvim
	$(LN) $(LOCAL_CONFIG)/nvim $(XDGBASE)/nvim

rofi:
	@echo "Setting up rofi..."
	$(RMDIR) $(XDGBASE)/rofi
	$(LN) $(LOCAL_CONFIG)/rofi $(XDGBASE)/rofi

wal:
	@echo "Setting up wal..."
	$(RMDIR) $(XDGBASE)/wal
	$(LN) $(LOCAL_CONFIG)/wal $(XDGBASE)/wal

waybar:
	@echo "Setting up waybar..."
	$(RMDIR) $(XDGBASE)/waybar
	$(LN) $(LOCAL_CONFIG)/waybar $(XDGBASE)/waybar

xsettings:
	@echo "Setting up xsettings..."
	$(RMDIR) $(XDGBASE)/xsettingsd
	$(LN) $(LOCAL_CONFIG)/xsettingsd $(XDGBASE)/xsettingsd

zsh:
	@echo "Setting up zsh..."
	$(RM) $(XDGBASE)/.zshrc
	$(LN) $(LOCAL_CONFIG)/.zshrc $(XDGBASE)/.zshrc

starship:
	@echo "Setting up starship..."
	$(RM) $(XDGBASE)/.starship.toml
	$(LN) $(LOCAL_CONFIG)/.starship.toml $(XDGBASE)/.starship.toml

ssh:
	@echo "Setting up ssh..."
	$(RMDIR) $(SSHBASE)
	$(MKDIR) $(SSHBASE)
	$(CP) $(LOCAL_SSH)/* $(SSHBASE)

dev:
	@echo "Setting up dev folders..."
	$(MKDIR) $(LOCAL_HOME)/dev/personal
	$(MKDIR) $(LOCAL_HOME)/dev/work
	$(CP) $(LOCAL_HOME)/dev/personal/.gitconfig.personal $(LOCAL_HOME)/dev/personal/.gitconfig.personal
	$(CP) $(LOCAL_HOME)/dev/personal/.gitconfig.work $(LOCAL_HOME)/dev/work/.gitconfig.work

home:
	@echo "Setting up home dots..."
	$(LN) $(LOCAL_HOME)/.gitconfig $(XDGBASE)/.gitconfig
	$(LN) $(LOCAL_HOME)/.nix-channels $(XDGBASE)/.nix-channels
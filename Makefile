MKDIR=mkdir -p
RMDIR=rm -rf
LN=ln -vsf
LNDIR=ln -vs
CP=cp -r -v

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
	$(LNDIR) $(LOCAL_CONFIG)/.settings $(XDGBASE)/.settings

dunst:
	@echo "Setting up dunst..."
	$(RMDIR) $(XDGBASE)/dunst
	$(LNDIR) $(LOCAL_CONFIG)/dunst $(XDGBASE)/dunst

fastfetch:
	@echo "Setting up fastfetch..."
	$(RMDIR) $(XDGBASE)/fastfetch
	$(LNDRI) $(LOCAL_CONFIG)/fastfetch $(XDGBASE)/fastfetch

gtk:
	@echo "Setting up gtk..."
	$(RMDIR) $(XDGBASE)/gtk-3.0
	$(RMDIR) $(XDGBASE)/gtk-4.0
	$(LNDIR) $(LOCAL_CONFIG)/gtk-3.0 $(XDGBASE)/gtk-3.0
	$(LNDIR) $(LOCAL_CONFIG)/gtk-4.0 $(XDGBASE)/gtk-4.0

hypr:
	@echo "Setting up hyprland..."
	$(RMDIR) $(XDGBASE)/hypr
	$(LNDIR) $(LOCAL_CONFIG)/hypr $(XDGBASE)/hypr

kitty:
	@echo "Setting up kitty..."
	$(RMDIR) $(XDGBASE)/kitty
	$(LNDIR) $(LOCAL_CONFIG)/kitty $(XDGBASE)/kitty

nvim:
	@echo "Setting up nvim..."
	$(RMDIR) $(XDGBASE)/nvim
	$(LNDIR) $(LOCAL_CONFIG)/nvim $(XDGBASE)/nvim

rofi:
	@echo "Setting up rofi..."
	$(RMDIR) $(XDGBASE)/rofi
	$(LNDIR) $(LOCAL_CONFIG)/rofi $(XDGBASE)/rofi

wal:
	@echo "Setting up wal..."
	$(RMDIR) $(XDGBASE)/wal
	$(LNDIR) $(LOCAL_CONFIG)/wal $(XDGBASE)/wal

waybar:
	@echo "Setting up waybar..."
	$(RMDIR) $(XDGBASE)/waybar
	$(LNDIR) $(LOCAL_CONFIG)/waybar $(XDGBASE)/waybar

xsettings:
	@echo "Setting up xsettings..."
	$(RMDIR) $(XDGBASE)/xsettingsd
	$(LNDIR) $(LOCAL_CONFIG)/xsettingsd $(XDGBASE)/xsettingsd

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
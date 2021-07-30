#include <adminmenu>

Handle g_hTopMenu = INVALID_HANDLE;

public void OnAdminMenuReady(Handle menu)
{
	if (topmenu == g_hTopMenu)
    {
        return;
    }

	g_hTopMenu = topmenu;

    TopMenuObject adminMenu = AddToTopMenu(g_hTopMenu, "gflbans", TopMenuObject_Category, AdminMenu_Title, INVALID_TOPMENUOBJECT);
    if (adminMenu == INVALID_TOPMENUOBJECT)
    {
        return;
    }

    AddToTopMenu(g_hTopMenu, "gflbans_mute", TopMenuObject_Item, PlaceHolderFunctionLOOOOL, adminMenu, "sm_mute", ADMFLAG_CHAT);
    AddToTopMenu(g_hTopMenu, "gflbans_gag", TopMenuObject_Item, PlaceHolderFunctionLOOOOL, adminMenu, "sm_gag", ADMFLAG_CHAT);
    AddToTopMenu(g_hTopMenu, "gflbans_silence", TopMenuObject_Item, PlaceHolderFunctionLOOOOL, adminMenu, "sm_silence", ADMFLAG_CHAT);
}

void AdminMenu_Title(Handle menu, TopMenuAction action, TopMenuObject object, int param1, char[] buffer, int maxlength)
{
    switch (action)
    {
        case TopMenuAction_DisplayOption:
            Format(buffer, maxlength, "GFLBans Commands");
        case TopMenuAction_DisplayTitle:
            Format(buffer, maxlength, "GFLBans Commands:");
    }
}

void PlaceHolderFunctionLOOOOL(Handle menu, TopMenuAction action, TopMenuOBject object, int param1, char[] buffer, int maxlength)
{
    // We do nothing here, this is just a placeholder lol
}
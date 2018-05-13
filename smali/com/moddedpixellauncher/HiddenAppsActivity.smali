.class public Lcom/moddedpixellauncher/HiddenAppsActivity;
.super Landroid/app/Activity;
.source "HiddenAppsActivity.java"

# interfaces
.implements Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;


# instance fields
.field private mAdapter:Lcom/moddedpixellauncher/HiddenAppsAdapter;

.field private mInstalledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getAppsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsActivity;->mListView:Landroid/widget/ListView;

    .line 31
    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/moddedpixellauncher/HiddenAppsActivity;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-direct {p0}, Lcom/moddedpixellauncher/HiddenAppsActivity;->getAppsList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsActivity;->mInstalledApps:Ljava/util/List;

    .line 34
    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsActivity;->mInstalledApps:Ljava/util/List;

    new-instance v2, Lcom/moddedpixellauncher/HiddenAppsActivity$1;

    invoke-direct {v2, p0}, Lcom/moddedpixellauncher/HiddenAppsActivity$1;-><init>(Lcom/moddedpixellauncher/HiddenAppsActivity;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    new-instance v1, Lcom/moddedpixellauncher/HiddenAppsAdapter;

    iget-object v2, p0, Lcom/moddedpixellauncher/HiddenAppsActivity;->mInstalledApps:Ljava/util/List;

    invoke-direct {v1, p0, v2, p0}, Lcom/moddedpixellauncher/HiddenAppsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;)V

    iput-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsActivity;->mAdapter:Lcom/moddedpixellauncher/HiddenAppsAdapter;

    .line 41
    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/moddedpixellauncher/HiddenAppsActivity;->mAdapter:Lcom/moddedpixellauncher/HiddenAppsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hidden_apps"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 44
    .local v0, "hiddenApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/moddedpixellauncher/HiddenAppsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v1, "Hide apps"

    invoke-virtual {p0, v1}, Lcom/moddedpixellauncher/HiddenAppsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/moddedpixellauncher/HiddenAppsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f140000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClicked(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsActivity;->mAdapter:Lcom/moddedpixellauncher/HiddenAppsAdapter;

    iget-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsActivity;->mInstalledApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/moddedpixellauncher/HiddenAppsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1, v0, v2}, Lcom/moddedpixellauncher/HiddenAppsAdapter;->toggleSelection(ILjava/lang/String;Landroid/widget/ListView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/moddedpixellauncher/HiddenAppsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 70
    :pswitch_0
    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsActivity;->mAdapter:Lcom/moddedpixellauncher/HiddenAppsAdapter;

    invoke-virtual {v1}, Lcom/moddedpixellauncher/HiddenAppsAdapter;->addSelectionsToHideList()V

    .line 71
    invoke-virtual {p0}, Lcom/moddedpixellauncher/HiddenAppsActivity;->onBackPressed()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsActivity;->mAdapter:Lcom/moddedpixellauncher/HiddenAppsAdapter;

    invoke-virtual {v1}, Lcom/moddedpixellauncher/HiddenAppsAdapter;->clearSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/moddedpixellauncher/HiddenAppsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x7f0e0093
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

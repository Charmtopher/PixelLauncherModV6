.class Lcom/google/android/apps/nexuslauncher/qsb/q;
.super Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;
.source "SourceFile"


# instance fields
.field final synthetic AT:Lcom/google/android/apps/nexuslauncher/qsb/p;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/p;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/q;->AT:Lcom/google/android/apps/nexuslauncher/qsb/p;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public createShortcutInfo()Lcom/android/launcher3/ShortcutInfo;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/q;->AT:Lcom/google/android/apps/nexuslauncher/qsb/p;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/p;->a(Lcom/google/android/apps/nexuslauncher/qsb/p;)Lcom/android/launcher3/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 39
    new-instance p1, Lcom/android/launcher3/FastBitmapDrawable;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/q;->AT:Lcom/google/android/apps/nexuslauncher/qsb/p;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/p;->a(Lcom/google/android/apps/nexuslauncher/qsb/p;)Lcom/android/launcher3/AppInfo;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Lcom/android/launcher3/ItemInfoWithIcon;)V

    return-object p1
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/q;->AT:Lcom/google/android/apps/nexuslauncher/qsb/p;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/p;->a(Lcom/google/android/apps/nexuslauncher/qsb/p;)Lcom/android/launcher3/AppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

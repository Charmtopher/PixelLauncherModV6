.class Lcom/google/android/apps/nexuslauncher/qsb/v;
.super Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;
.source "SourceFile"


# instance fields
.field final synthetic AZ:Lcom/google/android/apps/nexuslauncher/qsb/u;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/u;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/v;->AZ:Lcom/google/android/apps/nexuslauncher/qsb/u;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public createShortcutInfo()Lcom/android/launcher3/ShortcutInfo;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/v;->AZ:Lcom/google/android/apps/nexuslauncher/qsb/u;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/u;->d(Lcom/google/android/apps/nexuslauncher/qsb/u;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/v;->AZ:Lcom/google/android/apps/nexuslauncher/qsb/u;

    .line 61
    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/qsb/u;->a(Lcom/google/android/apps/nexuslauncher/qsb/u;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/v;->AZ:Lcom/google/android/apps/nexuslauncher/qsb/u;

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/qsb/u;->c(Lcom/google/android/apps/nexuslauncher/qsb/u;)Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->updateAndBindShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/v;->AZ:Lcom/google/android/apps/nexuslauncher/qsb/u;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/u;->a(Lcom/google/android/apps/nexuslauncher/qsb/u;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 55
    new-instance p1, Lcom/android/launcher3/FastBitmapDrawable;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/v;->AZ:Lcom/google/android/apps/nexuslauncher/qsb/u;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/u;->b(Lcom/google/android/apps/nexuslauncher/qsb/u;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Lcom/android/launcher3/graphics/BitmapInfo;)V

    return-object p1
.end method

.method public getItemType()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/v;->AZ:Lcom/google/android/apps/nexuslauncher/qsb/u;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/u;->a(Lcom/google/android/apps/nexuslauncher/qsb/u;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/v;->AZ:Lcom/google/android/apps/nexuslauncher/qsb/u;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/u;->a(Lcom/google/android/apps/nexuslauncher/qsb/u;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

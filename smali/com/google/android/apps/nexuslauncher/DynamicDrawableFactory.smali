.class public Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;
.super Lcom/android/launcher3/graphics/DrawableFactory;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final wK:Lcom/google/android/apps/nexuslauncher/b/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/android/launcher3/graphics/DrawableFactory;-><init>()V

    .line 27
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b/f;

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;->wK:Lcom/google/android/apps/nexuslauncher/b/f;

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public final newIcon(Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/FastBitmapDrawable;
    .locals 3

    .line 33
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->itemType:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/b/f;->yy:Landroid/content/ComponentName;

    .line 34
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    .line 35
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;->wK:Lcom/google/android/apps/nexuslauncher/b/f;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/b/d;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/b/f;->yA:Lcom/google/android/apps/nexuslauncher/b/c;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/b/c;->cU()Lcom/google/android/apps/nexuslauncher/b/c;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/google/android/apps/nexuslauncher/b/d;-><init>(Lcom/android/launcher3/ItemInfoWithIcon;Lcom/google/android/apps/nexuslauncher/b/c;Lcom/google/android/apps/nexuslauncher/b/f;)V

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/b/f;->yz:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfoWithIcon;->isDisabled()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 38
    return-object v1

    .line 40
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object p1

    return-object p1
.end method

.method public final newIcon(Lcom/android/launcher3/graphics/BitmapInfo;Landroid/content/pm/ActivityInfo;)Lcom/android/launcher3/FastBitmapDrawable;
    .locals 2

    .line 46
    sget-object v0, Lcom/google/android/apps/nexuslauncher/b/f;->yy:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 47
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;->wK:Lcom/google/android/apps/nexuslauncher/b/f;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/nexuslauncher/b/f;->a(Lcom/android/launcher3/graphics/BitmapInfo;)Lcom/google/android/apps/nexuslauncher/b/d;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    const-string v0, "com.google.android.calendar"

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 50
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance p2, Lcom/google/android/apps/nexuslauncher/b/a;

    iget-object v0, p1, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/android/launcher3/graphics/BitmapInfo;->color:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1, v1}, Lcom/google/android/apps/nexuslauncher/b/a;-><init>(Landroid/graphics/Bitmap;ILandroid/content/Context;)V

    return-object p2

    .line 53
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Lcom/android/launcher3/graphics/BitmapInfo;Landroid/content/pm/ActivityInfo;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object p1

    return-object p1
.end method

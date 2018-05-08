.class public Lcom/google/android/apps/nexuslauncher/search/g;
.super Lcom/android/launcher3/AppInfo;
.source "SourceFile"


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/util/ComponentKey;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/android/launcher3/AppInfo;-><init>()V

    .line 23
    iget-object v0, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/search/g;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/g;->mIntent:Landroid/content/Intent;

    .line 24
    iget-object p1, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/g;->user:Landroid/os/UserHandle;

    .line 25
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/search/g;->itemType:I

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/AppInfo;
    .locals 2

    .line 34
    const-string v0, "@instantapp"

    iget-object v1, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/d/b;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/d/b;

    move-result-object p0

    iget-object v0, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 36
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/d/b;->h(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/d/a;

    move-result-object p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    return-object p0

    .line 40
    :cond_0
    const-string p0, "SimpleItemInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "instant app info not available for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    new-instance p0, Lcom/google/android/apps/nexuslauncher/search/g;

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/search/g;-><init>(Lcom/android/launcher3/util/ComponentKey;)V

    return-object p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/g;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

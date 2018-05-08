.class public Lcom/google/android/apps/nexuslauncher/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final Gs:Lcom/android/launcher3/util/ComponentKey;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/e/a;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/e/a;->Gs:Lcom/android/launcher3/util/ComponentKey;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/allapps/AllAppsStore;)Lcom/android/launcher3/ItemInfoWithIcon;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/a;->Gs:Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/AppInfo;

    move-result-object p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    return-object p1

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/e/a;->eZ()Ljava/lang/String;

    move-result-object p1

    const-string v0, "@instantapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/e/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/d/b;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/d/b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/a;->Gs:Lcom/android/launcher3/util/ComponentKey;

    iget-object v0, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 48
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/google/android/apps/nexuslauncher/d/b;->h(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/d/a;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/e/a;->Gs:Lcom/android/launcher3/util/ComponentKey;

    instance-of p1, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;

    if-eqz p1, :cond_2

    .line 50
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/e/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/a/a;->a(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/a;->Gs:Lcom/android/launcher3/util/ComponentKey;

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutKey;

    .line 51
    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/a/a;->xn:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    .line 50
    return-object p1

    .line 53
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final eZ()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/a;->Gs:Lcom/android/launcher3/util/ComponentKey;

    iget-object v0, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPackage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/a;->Gs:Lcom/android/launcher3/util/ComponentKey;

    iget-object v0, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/a;->Gs:Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

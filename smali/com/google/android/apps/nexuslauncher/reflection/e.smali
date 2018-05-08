.class public Lcom/google/android/apps/nexuslauncher/reflection/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
.implements Lcom/google/android/apps/nexuslauncher/reflection/l;


# instance fields
.field private final Be:Lcom/android/launcher3/compat/UserManagerCompat;

.field private final Bf:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private final Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

.field private final Bh:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

.field private final Bi:Lcom/google/android/apps/nexuslauncher/reflection/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/k;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Be:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 37
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bf:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 38
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    .line 40
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->m(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bh:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    .line 41
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bi:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    .line 42
    return-void
.end method


# virtual methods
.method public final dU()V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Be:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 50
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bf:Lcom/android/launcher3/compat/LauncherAppsCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 53
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1
    if-ltz v3, :cond_0

    .line 54
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    .line 55
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bh:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    invoke-virtual {v6, v4, v5, v1}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->a(ILandroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 56
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bi:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-virtual {v6, v5, v1}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->a(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 53
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 58
    :cond_0
    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bf:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 60
    return-void
.end method

.method public final dV()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bf:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 122
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bf:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 68
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 69
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bh:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->a(ILandroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bi:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->a(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 77
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bh:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->a(ILjava/lang/String;Landroid/os/UserHandle;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bi:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->a(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 93
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bh:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->a(ILjava/lang/String;Landroid/os/UserHandle;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bi:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->a(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bg:Lcom/google/android/apps/nexuslauncher/reflection/k;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Be:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 84
    invoke-virtual {v2, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    .line 83
    const-string p2, "%s/"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BA:Lcom/google/android/apps/nexuslauncher/reflection/j;

    const-string v4, "system"

    invoke-virtual {v3, v4, p2}, Lcom/google/android/apps/nexuslauncher/reflection/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "%s%s/"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "_"

    aput-object v4, v3, v1

    aput-object p1, v3, v2

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->BA:Lcom/google/android/apps/nexuslauncher/reflection/j;

    const-string v0, "system"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    .line 98
    iget-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bh:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    const/4 v0, -0x1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->a(I[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 99
    iget-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bi:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->a([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 100
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bh:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->a(I[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bi:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->a([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 112
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    .line 105
    iget-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bh:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->a(I[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 106
    iget-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bi:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->a([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 107
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bh:Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->a(I[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->Bi:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->a([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 117
    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 0

    .line 128
    return-void
.end method

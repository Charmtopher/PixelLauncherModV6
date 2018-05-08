.class public Lcom/android/launcher3/compat/UserManagerCompatVN;
.super Lcom/android/launcher3/compat/UserManagerCompatVM;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/UserManagerCompatVM;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public isAnyProfileQuietModeEnabled()Z
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/android/launcher3/compat/UserManagerCompatVN;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 48
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/launcher3/compat/UserManagerCompatVN;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_1
    goto :goto_0

    .line 55
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

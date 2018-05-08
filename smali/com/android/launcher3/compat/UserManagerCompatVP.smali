.class public Lcom/android/launcher3/compat/UserManagerCompatVP;
.super Lcom/android/launcher3/compat/UserManagerCompatVNMr1;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserManagerCompatVP"


# instance fields
.field private mRequestQuietModeEnabled:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 32
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/UserManagerCompatVNMr1;-><init>(Landroid/content/Context;)V

    .line 35
    :try_start_0
    const-class p1, Landroid/os/UserManager;

    const-string v0, "requestQuietModeEnabled"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/os/UserHandle;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/compat/UserManagerCompatVP;->mRequestQuietModeEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-void

    .line 37
    :catch_0
    move-exception p1

    .line 38
    const-string v0, "UserManagerCompatVP"

    const-string v1, "requestQuietModeEnabled is not available"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    return-void
.end method


# virtual methods
.method public requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVP;->mRequestQuietModeEnabled:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 45
    return v1

    .line 48
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVP;->mRequestQuietModeEnabled:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/launcher3/compat/UserManagerCompatVP;->mUserManager:Landroid/os/UserManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return p1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    const-string p2, "UserManagerCompatVP"

    const-string v0, "Failed to invoke mRequestQuietModeEnabled"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    return v1
.end method

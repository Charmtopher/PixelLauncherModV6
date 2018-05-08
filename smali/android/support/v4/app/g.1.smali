.class public Landroid/support/v4/app/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cN:Ljava/lang/reflect/Method;

.field private static cO:Z


# direct methods
.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6

    .line 48
    sget-boolean v0, Landroid/support/v4/app/g;->cO:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 50
    :try_start_0
    const-class v0, Landroid/os/Bundle;

    const-string v3, "getIBinder"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    sput-object v0, Landroid/support/v4/app/g;->cN:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v3, "BundleCompatBaseImpl"

    const-string v4, "Failed to retrieve getIBinder method"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :goto_0
    sput-boolean v2, Landroid/support/v4/app/g;->cO:Z

    .line 58
    :cond_0
    sget-object v0, Landroid/support/v4/app/g;->cN:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 60
    :try_start_1
    sget-object v0, Landroid/support/v4/app/g;->cN:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 61
    :catch_1
    move-exception p0

    .line 63
    const-string p1, "BundleCompatBaseImpl"

    const-string v0, "Failed to invoke getIBinder via reflection"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    sput-object v3, Landroid/support/v4/app/g;->cN:Ljava/lang/reflect/Method;

    .line 67
    :cond_1
    return-object v3
.end method

.class public final Landroid/support/v4/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static hU:Ljava/lang/reflect/Method;

.field private static hV:Z


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;I)Z
    .locals 6

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p0

    return p0

    .line 356
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 357
    sget-boolean v0, Landroid/support/v4/b/a/a;->hV:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 359
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v3, "setLayoutDirection"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    .line 360
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 361
    sput-object v0, Landroid/support/v4/b/a/a;->hU:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    const-string v3, "DrawableCompat"

    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    :goto_0
    sput-boolean v1, Landroid/support/v4/b/a/a;->hV:Z

    .line 368
    :cond_1
    sget-object v0, Landroid/support/v4/b/a/a;->hU:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 370
    :try_start_1
    sget-object v0, Landroid/support/v4/b/a/a;->hU:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    return v1

    .line 372
    :catch_1
    move-exception p0

    .line 373
    const-string p1, "DrawableCompat"

    const-string v0, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    const/4 p0, 0x0

    sput-object p0, Landroid/support/v4/b/a/a;->hU:Ljava/lang/reflect/Method;

    .line 377
    :cond_2
    return v2

    .line 379
    :cond_3
    return v2
.end method

.class public final Landroid/support/v4/view/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static jT:Ljava/lang/reflect/Field;

.field private static jU:Z


# direct methods
.method public static a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 5

    .line 71
    sget-boolean v0, Landroid/support/v4/view/e;->jU:Z

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/LayoutInflater;

    const-string v2, "mFactory2"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 74
    sput-object v1, Landroid/support/v4/view/e;->jT:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    const-string v2, "LayoutInflaterCompatHC"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Landroid/view/LayoutInflater;

    .line 77
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; inflation may have unexpected results."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :goto_0
    sput-boolean v0, Landroid/support/v4/view/e;->jU:Z

    .line 82
    :cond_0
    sget-object v0, Landroid/support/v4/view/e;->jT:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 84
    :try_start_1
    sget-object v0, Landroid/support/v4/view/e;->jT:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    return-void

    .line 85
    :catch_1
    move-exception p1

    .line 86
    const-string v0, "LayoutInflaterCompatHC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; inflation may have unexpected results."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_1
    return-void
.end method

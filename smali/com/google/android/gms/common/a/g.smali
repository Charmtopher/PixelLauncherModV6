.class public final Lcom/google/android/gms/common/a/g;
.super Ljava/lang/Object;


# static fields
.field private static MB:Ljava/lang/Boolean;

.field private static MC:Ljava/lang/Boolean;

.field public static MD:Ljava/lang/Boolean;


# direct methods
.method public static C(Landroid/content/Context;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/common/a/g;->MC:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/a/k;->gw()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "cn.google"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/a/g;->MC:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/google/android/gms/common/a/g;->MC:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    sget-object v0, Lcom/google/android/gms/common/a/g;->MB:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/common/a/k;->gv()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v2

    goto :goto_2

    :cond_4
    move p0, v1

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/a/g;->MB:Ljava/lang/Boolean;

    :cond_5
    sget-object p0, Lcom/google/android/gms/common/a/g;->MB:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v1
.end method

.class public final Lcom/google/android/gms/common/a/l;
.super Ljava/lang/Object;


# direct methods
.method public static e(Landroid/content/Context;I)Z
    .locals 3

    const-string v0, "com.google.android.gms"

    invoke-static {p0}, Lcom/google/android/gms/internal/cI;->F(Landroid/content/Context;)Lcom/google/android/gms/internal/cH;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/cH;->c(ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_0
    const-string v1, "com.google.android.gms"

    const/16 v2, 0x40

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/google/android/gms/common/g;->x(Landroid/content/Context;)Lcom/google/android/gms/common/g;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_3

    invoke-static {p1, v0}, Lcom/google/android/gms/common/g;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    return v2

    :cond_1
    invoke-static {p1, v2}, Lcom/google/android/gms/common/g;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v1, Lcom/google/android/gms/common/g;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/common/f;->w(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Test-keys aren\'t accepted on this build."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :catch_0
    move-exception p0

    const-string p0, "UidVerifier"

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "UidVerifier"

    const-string p1, "Package manager can\'t find google play services package, defaulting to false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.class public Lcom/google/android/apps/nexuslauncher/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/net/Uri;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;
    .locals 4

    .line 29
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "component"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    const-string v1, "component"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 33
    const-string v2, "user"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 34
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    return-object v0

    .line 38
    :cond_1
    new-instance p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {p1, v1, p0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object p1

    .line 30
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;
    .locals 0

    .line 25
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/e/b;->a(Landroid/net/Uri;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;
    .locals 5

    .line 46
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 47
    nop

    .line 48
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 53
    move v0, v2

    goto :goto_0

    .line 50
    :cond_0
    nop

    .line 53
    move v0, v1

    :goto_0
    const/16 v3, 0x23

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 54
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 55
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 56
    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    .line 57
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 58
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p0

    .line 60
    goto :goto_1

    .line 62
    :cond_1
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 63
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    .line 65
    :goto_1
    if-eqz v1, :cond_4

    if-nez p0, :cond_2

    goto :goto_2

    .line 68
    :cond_2
    if-eqz v0, :cond_3

    .line 69
    new-instance p1, Lcom/android/launcher3/shortcuts/ShortcutKey;

    invoke-direct {p1, v1, p0}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {p1, v1, p0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 68
    return-object p1

    .line 66
    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

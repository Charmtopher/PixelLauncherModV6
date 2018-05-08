.class public Lcom/android/launcher3/util/InstantAppResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;
    .locals 2

    .line 37
    const-class v0, Lcom/android/launcher3/util/InstantAppResolver;

    const v1, 0x7f0c001c

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/InstantAppResolver;

    return-object p0
.end method


# virtual methods
.method public getInstantApps()Ljava/util/List;
    .locals 1

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isInstantApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 52
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 53
    :catch_0
    move-exception p1

    .line 54
    const-string v1, "InstantAppResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to determine whether package is instant app "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    return v0
.end method

.method public isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 42
    const/4 p1, 0x0

    return p1
.end method

.method public isInstantApp(Lcom/android/launcher3/AppInfo;)Z
    .locals 0

    .line 46
    const/4 p1, 0x0

    return p1
.end method

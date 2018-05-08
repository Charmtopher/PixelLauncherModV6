.class public Lcom/android/quickstep/InstantAppResolverImpl;
.super Lcom/android/launcher3/util/InstantAppResolver;
.source "SourceFile"


# static fields
.field public static final COMPONENT_CLASS_MARKER:Ljava/lang/String; = "@instantapp"

.field private static final TAG:Ljava/lang/String; = "InstantAppResolverImpl"


# instance fields
.field private final mPM:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/launcher3/util/InstantAppResolver;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/InstantAppResolverImpl;->mPM:Landroid/content/pm/PackageManager;

    .line 46
    return-void
.end method


# virtual methods
.method public getInstantApps()Ljava/util/List;
    .locals 3

    .line 62
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/android/quickstep/InstantAppResolverImpl;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getInstantApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/InstantAppInfo;

    .line 64
    invoke-virtual {v2}, Landroid/content/pm/InstantAppInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 65
    if-eqz v2, :cond_0

    .line 66
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    goto :goto_0

    .line 69
    :cond_1
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v1, "InstantAppResolverImpl"

    const-string v2, "Error calling API: getInstantApps"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 70
    :catch_1
    move-exception v0

    .line 71
    const-string v1, "InstantAppResolverImpl"

    const-string v2, "getInstantApps failed. Launcher may not be the default home app."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    nop

    .line 75
    :goto_1
    invoke-super {p0}, Lcom/android/launcher3/util/InstantAppResolver;->getInstantApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 50
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p1

    return p1
.end method

.method public isInstantApp(Lcom/android/launcher3/AppInfo;)Z
    .locals 1

    .line 55
    invoke-virtual {p1}, Lcom/android/launcher3/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 56
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "@instantapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

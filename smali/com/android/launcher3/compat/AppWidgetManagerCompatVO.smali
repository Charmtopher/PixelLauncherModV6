.class Lcom/android/launcher3/compat/AppWidgetManagerCompatVO;
.super Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 2

    .line 40
    if-nez p1, :cond_0

    .line 41
    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;->getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompatVO;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

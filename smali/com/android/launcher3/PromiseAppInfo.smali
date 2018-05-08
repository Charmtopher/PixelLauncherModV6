.class public Lcom/android/launcher3/PromiseAppInfo;
.super Lcom/android/launcher3/AppInfo;
.source "SourceFile"


# instance fields
.field public level:I


# virtual methods
.method public final getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 51
    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher3/PromiseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final makeShortcut()Lcom/android/launcher3/ShortcutInfo;
    .locals 2

    .line 41
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/AppInfo;)V

    .line 42
    iget v1, p0, Lcom/android/launcher3/PromiseAppInfo;->level:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutInfo;->setInstallProgress(I)V

    .line 44
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 46
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 47
    return-object v0
.end method

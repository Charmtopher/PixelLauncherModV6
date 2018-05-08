.class public abstract Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SCActivityInfo"


# instance fields
.field private final mCn:Landroid/content/ComponentName;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->mCn:Landroid/content/ComponentName;

    .line 52
    iput-object p2, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->mUser:Landroid/os/UserHandle;

    .line 53
    return-void
.end method


# virtual methods
.method public createShortcutInfo()Lcom/android/launcher3/ShortcutInfo;
    .locals 1

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->mCn:Landroid/content/ComponentName;

    return-object v0
.end method

.method public abstract getFullResIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
.end method

.method public getItemType()I
    .locals 1

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public isPersistable()Z
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 4

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 83
    const v1, 0x7f0c0023

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 p1, 0x1

    return p1

    .line 87
    :catch_0
    move-exception p2

    .line 88
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 89
    const-string p1, "SCActivityInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Launcher does not have the permission to launch "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    :catch_1
    move-exception p2

    .line 86
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 92
    nop

    .line 93
    :goto_0
    return v2
.end method

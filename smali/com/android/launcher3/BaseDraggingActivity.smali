.class public abstract Lcom/android/launcher3/BaseDraggingActivity;
.super Lcom/android/launcher3/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;


# static fields
.field public static final AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

.field public static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field private static final TAG:Ljava/lang/String; = "BaseDraggingActivity"


# instance fields
.field private mCurrentActionMode:Landroid/view/ActionMode;

.field protected mIsSafeModeEnabled:Z

.field private mOnStartCallback:Lcom/android/launcher3/BaseDraggingActivity$OnStartCallback;

.field private mThemeRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/BaseDraggingActivity;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    .line 62
    const v0, 0x7f130002

    iput v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mThemeRes:I

    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseDraggingActivity;
    .locals 1

    .line 127
    instance-of v0, p0, Lcom/android/launcher3/BaseDraggingActivity;

    if-eqz v0, :cond_0

    .line 128
    check-cast p0, Lcom/android/launcher3/BaseDraggingActivity;

    return-object p0

    .line 130
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/BaseDraggingActivity;

    return-object p0
.end method

.method private startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/ItemInfo;)V
    .locals 8

    .line 195
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :try_start_1
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 200
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 203
    iget v1, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 204
    move-object v1, p3

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-static {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v2

    .line 207
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v7, p3, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 206
    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 208
    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/BaseDraggingActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception p2

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    :catch_0
    move-exception p2

    .line 216
    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/BaseDraggingActivity;->onErrorStartingShortcut(Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 220
    return-void

    .line 217
    :cond_1
    throw p2
.end method


# virtual methods
.method public finishAutoCancelActionMode()Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/BaseDraggingActivity;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/BaseDraggingActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 111
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getActivityLaunchOptions(Landroid/view/View;Z)Landroid/app/ActivityOptions;
.end method

.method public final getActivityLaunchOptionsAsBundle(Landroid/view/View;Z)Landroid/os/Bundle;
    .locals 0

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Z)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 141
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public abstract getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;
.end method

.method public abstract getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
.end method

.method public abstract getOverviewPanel()Landroid/view/View;
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method protected getThemeRes(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)I
    .locals 1

    .line 87
    iget-boolean v0, p1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mIsDark:Z

    if-eqz v0, :cond_0

    .line 88
    const p1, 0x7f130004

    return p1

    .line 89
    :cond_0
    iget-boolean p1, p1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSupportsDarkText:Z

    if-eqz p1, :cond_1

    .line 90
    const p1, 0x7f130003

    return p1

    .line 92
    :cond_1
    const p1, 0x7f130002

    return p1
.end method

.method public getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 136
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public abstract invalidateParent(Lcom/android/launcher3/ItemInfo;)V
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 105
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/BaseDraggingActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    .line 106
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 99
    iput-object p1, p0, Lcom/android/launcher3/BaseDraggingActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/BaseDraggingActivity;->mIsSafeModeEnabled:Z

    .line 70
    invoke-static {p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object p1

    .line 71
    invoke-virtual {p1, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->addOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->getThemeRes(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)I

    move-result p1

    .line 73
    iget v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mThemeRes:I

    if-eq p1, v0, :cond_0

    .line 74
    iput p1, p0, Lcom/android/launcher3/BaseDraggingActivity;->mThemeRes:I

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->setTheme(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 238
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onDestroy()V

    .line 239
    invoke-static {p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->removeOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 240
    return-void
.end method

.method protected onErrorStartingShortcut(Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z
    .locals 0

    .line 223
    const/4 p1, 0x0

    return p1
.end method

.method public onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V
    .locals 1

    .line 81
    iget v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mThemeRes:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->getThemeRes(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->recreate()V

    .line 84
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 228
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onStart()V

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mOnStartCallback:Lcom/android/launcher3/BaseDraggingActivity$OnStartCallback;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mOnStartCallback:Lcom/android/launcher3/BaseDraggingActivity$OnStartCallback;

    invoke-interface {v0, p0}, Lcom/android/launcher3/BaseDraggingActivity$OnStartCallback;->onActivityStart(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mOnStartCallback:Lcom/android/launcher3/BaseDraggingActivity$OnStartCallback;

    .line 234
    :cond_0
    return-void
.end method

.method public setOnStartCallback(Lcom/android/launcher3/BaseDraggingActivity$OnStartCallback;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/launcher3/BaseDraggingActivity;->mOnStartCallback:Lcom/android/launcher3/BaseDraggingActivity$OnStartCallback;

    .line 244
    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z
    .locals 7

    .line 148
    iget-boolean v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mIsSafeModeEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const p1, 0x7f0c0025

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 150
    return v1

    .line 155
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v2, "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    .line 156
    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    move v2, v0

    goto :goto_0

    .line 156
    :cond_1
    nop

    .line 157
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->isInMultiWindowModeCompat()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptionsAsBundle(Landroid/view/View;Z)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    .line 159
    :cond_2
    nop

    .line 161
    move-object v2, v3

    :goto_1
    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, p3, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 164
    :goto_2
    const/high16 v4, 0x10000000

    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    if-eqz p1, :cond_4

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 169
    :cond_4
    :try_start_0
    sget-boolean v4, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v4, :cond_6

    instance-of v4, p3, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v4, :cond_6

    iget v4, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eq v4, v0, :cond_5

    iget v4, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    :cond_5
    move-object v4, p3

    check-cast v4, Lcom/android/launcher3/ShortcutInfo;

    .line 173
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 174
    move v4, v0

    goto :goto_3

    .line 173
    :cond_6
    nop

    .line 174
    move v4, v1

    :goto_3
    if-eqz v4, :cond_7

    .line 176
    invoke-direct {p0, p2, v2, p3}, Lcom/android/launcher3/BaseDraggingActivity;->startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/ItemInfo;)V

    goto :goto_5

    .line 177
    :cond_7
    if-eqz v3, :cond_9

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    .line 181
    :cond_8
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v4

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 181
    invoke-virtual {v4, v5, v3, v6, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->startActivityForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_5

    .line 179
    :cond_9
    :goto_4
    invoke-virtual {p0, p2, v2}, Lcom/android/launcher3/BaseDraggingActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 184
    :goto_5
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return v0

    .line 186
    :catch_0
    move-exception p1

    .line 187
    const v0, 0x7f0c0023

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    const-string v0, "BaseDraggingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to launch. tag="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " intent="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    return v1
.end method

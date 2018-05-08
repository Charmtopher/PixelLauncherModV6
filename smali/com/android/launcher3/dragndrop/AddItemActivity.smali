.class public Lcom/android/launcher3/dragndrop/AddItemActivity;
.super Lcom/android/launcher3/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mApp:Lcom/android/launcher3/LauncherAppState;

.field private mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

.field private mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field private mFinishOnPause:Z

.field private mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

.field private final mLastTouchPos:Landroid/graphics/PointF;

.field private mPendingBindWidgetId:I

.field private mPendingWidgetInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

.field private mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

.field private mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

.field private mWidgetOptions:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    .line 70
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mFinishOnPause:Z

    return-void
.end method

.method private acceptWidget(I)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->queueWidget(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept(Landroid/os/Bundle;)Z

    .line 260
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 262
    return-void
.end method

.method private logCommand(I)V
    .locals 4

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 303
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newCommandAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    .line 304
    iget-object v2, v2, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    invoke-static {v2, v3}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Landroid/view/View;Lcom/android/launcher3/util/InstantAppResolver;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 305
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 302
    invoke-static {p1, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 306
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 272
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 273
    if-eqz p3, :cond_0

    .line 274
    const-string p1, "appWidgetId"

    iget v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 275
    :cond_0
    iget p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 276
    :goto_0
    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 277
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->acceptWidget(I)V

    return-void

    .line 280
    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 281
    iput p3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 283
    return-void

    .line 285
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 286
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 266
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(I)V

    .line 267
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onBackPressed()V

    .line 268
    return-void
.end method

.method public onCancelClick(Landroid/view/View;)V
    .locals 0

    .line 226
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(I)V

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 228
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 90
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 95
    return-void

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 100
    invoke-static {p0}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 106
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setContentView(I)V

    .line 107
    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 110
    new-instance v0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V

    new-instance v1, Lcom/android/launcher3/model/WidgetItem;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    iget-object v2, v2, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    new-instance v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-direct {v3, v0}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/WidgetImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, v2, Lcom/android/launcher3/LauncherAppState;->mWidgetCache:Lcom/android/launcher3/WidgetPreviewLoader;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/WidgetPreviewLoader;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->ensurePreview()V

    goto/16 :goto_2

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    iget v2, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt v2, v3, :cond_3

    iget v2, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-le v2, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v3}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->getPreview(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->mPreview:Landroid/widget/RemoteViews;

    invoke-static {p0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    new-instance v2, Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-direct {v2, p0}, Lcom/android/launcher3/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    new-instance v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {v2, v0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v4, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v4, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-static {p0, v2}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    new-instance v2, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v2, v0, v3, v4}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/content/pm/PackageManager;Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/widget/WidgetImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, v3, Lcom/android/launcher3/LauncherAppState;->mWidgetCache:Lcom/android/launcher3/WidgetPreviewLoader;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/WidgetPreviewLoader;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->ensurePreview()V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 118
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 123
    if-nez p1, :cond_5

    .line 124
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(I)V

    .line 126
    :cond_5
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    .line 141
    iget-object v1, v0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 142
    return v2

    .line 145
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 146
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 149
    new-instance v3, Lcom/android/launcher3/dragndrop/PinItemDragListener;

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 150
    iget-object v5, v0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v0

    invoke-direct {v3, v4, v1, v5, v0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;II)V

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 152
    invoke-virtual {v3, v0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 158
    sget-object v1, Lcom/android/launcher3/states/InternalStateHandler;->sScheduler:Lcom/android/launcher3/states/InternalStateHandler$Scheduler;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/states/InternalStateHandler$Scheduler;->schedule(Lcom/android/launcher3/states/InternalStateHandler;)V

    .line 159
    const v1, 0x10a0001

    .line 160
    invoke-static {p0, v2, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mFinishOnPause:Z

    .line 165
    new-instance v1, Landroid/content/ClipDescription;

    const-string v4, ""

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->getMimeType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-direct {v1, v4, v0}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 166
    new-instance v0, Landroid/content/ClipData;

    new-instance v3, Landroid/content/ClipData$Item;

    const-string v4, ""

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 167
    new-instance v1, Lcom/android/launcher3/dragndrop/AddItemActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity$1;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/view/View;)V

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 178
    return v2
.end method

.method protected onPause()V
    .locals 1

    .line 183
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onPause()V

    .line 184
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mFinishOnPause:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 187
    :cond_0
    return-void
.end method

.method public onPlaceAutomaticallyClick(Landroid/view/View;)V
    .locals 4

    .line 234
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 235
    new-instance p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 236
    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;-><init>(Landroid/content/pm/ShortcutInfo;)V

    .line 235
    invoke-static {p1, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->queueShortcut(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 237
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(I)V

    .line 238
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    .line 239
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 240
    return-void

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 244
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 245
    invoke-virtual {v2, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    .line 244
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result p1

    .line 246
    if-eqz p1, :cond_1

    .line 247
    iget p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->acceptWidget(I)V

    .line 248
    return-void

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iget v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 253
    invoke-virtual {v2, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 252
    invoke-virtual {p1, p0, v1, v2, v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startBindFlow(Lcom/android/launcher3/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V

    .line 254
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 296
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 297
    const-string v0, "state.widget.id"

    iget v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 298
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 299
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 290
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 291
    const-string v0, "state.widget.id"

    iget v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 131
    const/4 p1, 0x0

    return p1
.end method

.class public Lcom/android/launcher3/LauncherAppWidgetProviderInfo;
.super Landroid/appwidget/AppWidgetProviderInfo;
.source "SourceFile"


# instance fields
.field public minSpanX:I

.field public minSpanY:I

.field public spanX:I

.field public spanY:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 51
    return-void
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;
    .locals 2

    .line 29
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 30
    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    new-instance p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-direct {p1, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;)V

    .line 44
    return-object p1
.end method


# virtual methods
.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getWidgetFeatures()I
    .locals 1

    .line 99
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_0

    .line 100
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->widgetFeatures:I

    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initSpans(Landroid/content/Context;)V
    .locals 6

    .line 54
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 56
    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v1

    .line 57
    iget-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v2

    .line 61
    iget-object v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    .line 65
    iget-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    div-int/2addr v1, v0

    int-to-float v0, v1

    .line 72
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 74
    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minWidth:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    .line 76
    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minHeight:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    .line 79
    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minResizeWidth:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    .line 81
    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    .line 83
    return-void
.end method

.method public final isCustomWidget()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#custom-widget-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

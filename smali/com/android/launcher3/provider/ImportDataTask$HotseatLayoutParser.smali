.class Lcom/android/launcher3/provider/ImportDataTask$HotseatLayoutParser;
.super Lcom/android/launcher3/DefaultLayoutParser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)V
    .locals 6

    .line 390
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const v0, 0x7f08000d

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const v0, 0x7f080010

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 391
    return-void
.end method


# virtual methods
.method protected final getLayoutElementsMap()Landroid/util/ArrayMap;
    .locals 4

    .line 396
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 397
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;

    iget-object v3, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v1, "resolve"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    return-object v0
.end method

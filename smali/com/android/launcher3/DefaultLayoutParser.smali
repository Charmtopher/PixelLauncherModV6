.class public Lcom/android/launcher3/DefaultLayoutParser;
.super Lcom/android/launcher3/AutoInstallsLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V
    .locals 7

    .line 51
    const-string v6, "favorites"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected final getFolderElementsMap()Landroid/util/ArrayMap;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DefaultLayoutParser;->getFolderElementsMap(Landroid/content/res/Resources;)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method final getFolderElementsMap(Landroid/content/res/Resources;)Landroid/util/ArrayMap;
    .locals 3

    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 61
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object v0
.end method

.method public getLayoutElementsMap()Landroid/util/ArrayMap;
    .locals 4

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 69
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "appwidget"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;

    iget-object v3, p0, Lcom/android/launcher3/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "resolve"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "folder"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "partner-folder"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object v0
.end method

.method protected final parseContainerAndScreen(Landroid/content/res/XmlResourceParser;[J)V
    .locals 3

    .line 80
    const/4 v0, 0x0

    const-wide/16 v1, -0x64

    aput-wide v1, p2, v0

    .line 81
    const-string v1, "container"

    invoke-static {p1, v1}, Lcom/android/launcher3/DefaultLayoutParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aput-wide v1, p2, v0

    .line 85
    :cond_0
    const/4 v0, 0x1

    const-string v1, "screen"

    invoke-static {p1, v1}, Lcom/android/launcher3/DefaultLayoutParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    aput-wide v1, p2, v0

    .line 86
    return-void
.end method

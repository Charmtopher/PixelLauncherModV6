.class public Lcom/android/launcher3/AutoInstallsLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HOTSEAT_CONTAINER_NAME:Ljava/lang/String;


# instance fields
.field final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field protected final mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

.field private final mColumnCount:I

.field final mContext:Landroid/content/Context;

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field protected final mLayoutId:I

.field protected final mPackageManager:Landroid/content/pm/PackageManager;

.field protected final mRootTag:Ljava/lang/String;

.field private final mRowCount:I

.field public final mSourceRes:Landroid/content/res/Resources;

.field private final mTemp:[J

.field final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 147
    nop

    .line 148
    const/16 v0, -0x65

    invoke-static {v0}, Lcom/android/launcher3/LauncherSettings$Favorites;->containerToString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/AutoInstallsLayout;->HOTSEAT_CONTAINER_NAME:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mTemp:[J

    .line 174
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mContext:Landroid/content/Context;

    .line 175
    iput-object p2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 176
    iput-object p3, p0, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 179
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    .line 180
    iput-object p6, p0, Lcom/android/launcher3/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    .line 182
    iput-object p4, p0, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    .line 183
    iput p5, p0, Lcom/android/launcher3/AutoInstallsLayout;->mLayoutId:I

    .line 185
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 186
    iget-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mRowCount:I

    .line 187
    iget-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mColumnCount:I

    .line 188
    return-void
.end method

.method protected static beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 3

    .line 627
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 628
    :cond_1
    if-ne v0, v1, :cond_3

    .line 634
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    return-void

    .line 635
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected start tag: found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 641
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 643
    if-gez v0, :cond_0

    .line 644
    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 647
    :cond_0
    return-object p0
.end method

.method static copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    .line 685
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 686
    return-void
.end method

.method static get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 2

    .line 71
    const-string v0, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Resources;

    invoke-static {p0, v1, v0, p1, p2}, Lcom/android/launcher3/AutoInstallsLayout;->get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object p0

    return-object p0
.end method

.method static get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 10

    .line 82
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 85
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "default_layout_%dx%d_h%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 85
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "xml"

    invoke-virtual {p2, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 90
    if-nez v2, :cond_0

    .line 91
    const-string v2, "AutoInstalls"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Formatted layout: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found. Trying layout without hosteat"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "default_layout_%dx%d"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    .line 93
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v0, "xml"

    invoke-virtual {p2, v1, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 99
    :cond_0
    if-nez v2, :cond_1

    .line 100
    const-string v0, "AutoInstalls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Formatted layout: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found. Trying the default layout"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "default_layout"

    const-string v1, "xml"

    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 104
    :cond_1
    move v8, v2

    if-nez v8, :cond_2

    .line 105
    const-string p0, "AutoInstalls"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Layout definition not found in package: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_2
    new-instance p1, Lcom/android/launcher3/AutoInstallsLayout;

    const-string v9, "workspace"

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    return-object p1
.end method

.method protected static getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 1

    .line 669
    const-string v0, "http://schemas.android.com/apk/res-auto/com.android.launcher3"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 672
    if-ne v0, p2, :cond_0

    .line 673
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 675
    :cond_0
    return v0
.end method

.method protected static getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 655
    const-string v0, "http://schemas.android.com/apk/res-auto/com.android.launcher3"

    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    if-nez v0, :cond_0

    .line 658
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v0}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v0

    .line 293
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "intent"

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object p2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v2, "title"

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string p2, "itemType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    iget-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string p2, "spanX"

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    iget-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string p2, "spanY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    iget-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string p2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 299
    iget-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    iget-object p2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p3, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-interface {p1, p2, p3}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-gez p1, :cond_0

    .line 300
    const-wide/16 p1, -0x1

    return-wide p1

    .line 302
    :cond_0
    return-wide v0
.end method

.method protected getFolderElementsMap()Landroid/util/ArrayMap;
    .locals 4

    .line 307
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 308
    const-string v1, "appicon"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AutoInstallsLayout$AutoInstallParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;

    iget-object v3, p0, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-object v0
.end method

.method public getLayoutElementsMap()Landroid/util/ArrayMap;
    .locals 4

    .line 315
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 316
    const-string v1, "appicon"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AutoInstallsLayout$AutoInstallParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v1, "folder"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v1, "appwidget"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;

    iget-object v3, p0, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    return-object v0
.end method

.method public final loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I
    .locals 2

    .line 194
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 196
    :try_start_0
    iget p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mLayoutId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/AutoInstallsLayout;->parseLayout(ILjava/util/ArrayList;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 197
    :catch_0
    move-exception p1

    .line 198
    const-string p2, "AutoInstalls"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error parsing layout: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 p1, -0x1

    return p1
.end method

.method protected parseContainerAndScreen(Landroid/content/res/XmlResourceParser;[J)V
    .locals 5

    .line 230
    sget-object v0, Lcom/android/launcher3/AutoInstallsLayout;->HOTSEAT_CONTAINER_NAME:Ljava/lang/String;

    const-string v1, "container"

    invoke-static {p1, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 231
    const-wide/16 v3, -0x65

    aput-wide v3, p2, v2

    .line 233
    const-string v0, "rank"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 234
    aput-wide v2, p2, v1

    .line 236
    return-void

    .line 237
    :cond_0
    const-wide/16 v3, -0x64

    aput-wide v3, p2, v2

    .line 238
    const-string v0, "screen"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 240
    return-void
.end method

.method protected final parseLayout(ILjava/util/ArrayList;)I
    .locals 17

    move-object/from16 v0, p0

    .line 208
    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 209
    iget-object v3, v0, Lcom/android/launcher3/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/launcher3/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 210
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/AutoInstallsLayout;->getLayoutElementsMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 213
    nop

    .line 215
    const/4 v5, 0x0

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 216
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_5

    :cond_1
    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    .line 217
    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    .line 218
    const-string v7, "include"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "workspace"

    invoke-static {v2, v7, v5}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/AutoInstallsLayout;->parseLayout(ILjava/util/ArrayList;)I

    move-result v7

    goto/16 :goto_1

    :cond_2
    move v7, v5

    goto/16 :goto_1

    :cond_3
    iget-object v7, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    iget-object v7, v0, Lcom/android/launcher3/AutoInstallsLayout;->mTemp:[J

    invoke-virtual {v0, v2, v7}, Lcom/android/launcher3/AutoInstallsLayout;->parseContainerAndScreen(Landroid/content/res/XmlResourceParser;[J)V

    iget-object v7, v0, Lcom/android/launcher3/AutoInstallsLayout;->mTemp:[J

    aget-wide v9, v7, v5

    iget-object v7, v0, Lcom/android/launcher3/AutoInstallsLayout;->mTemp:[J

    aget-wide v11, v7, v8

    iget-object v7, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v13, "container"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v7, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v13, "screen"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v7, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v13, "cellX"

    const-string v14, "x"

    invoke-static {v2, v14}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget v15, v0, Lcom/android/launcher3/AutoInstallsLayout;->mColumnCount:I

    invoke-static {v14, v15}, Lcom/android/launcher3/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v13, "cellY"

    const-string v14, "y"

    invoke-static {v2, v14}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget v15, v0, Lcom/android/launcher3/AutoInstallsLayout;->mRowCount:I

    invoke-static {v14, v15}, Lcom/android/launcher3/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/AutoInstallsLayout$TagParser;

    if-eqz v7, :cond_2

    invoke-interface {v7, v2}, Lcom/android/launcher3/AutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v7, v13, v15

    if-ltz v7, :cond_2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-wide/16 v13, -0x64

    cmp-long v7, v9, v13

    if-nez v7, :cond_4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v7, v8

    :goto_1
    add-int/2addr v6, v7

    goto/16 :goto_0

    .line 222
    :cond_5
    return v6
.end method

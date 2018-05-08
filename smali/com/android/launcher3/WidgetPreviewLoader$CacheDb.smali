.class Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;
.super Lcom/android/launcher3/util/SQLiteCacheHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 124
    const-string v0, "widgetpreviews.db"

    const-string v1, "shortcut_and_widget_previews"

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/launcher3/util/SQLiteCacheHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    return-void
.end method


# virtual methods
.method public final onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 129
    const-string v0, "CREATE TABLE IF NOT EXISTS shortcut_and_widget_previews (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, size TEXT NOT NULL, packageName TEXT NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, preview_bitmap BLOB, PRIMARY KEY (componentName, profileId, size) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    return-void
.end method

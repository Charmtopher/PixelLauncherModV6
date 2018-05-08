.class Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;->readValueFromMarketApp()Z

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_add_icon_to_home"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_add_icon_to_home_initialized"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final readValueFromMarketApp()Z
    .locals 11

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.APP_MARKET"

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 129
    const/high16 v2, 0x110000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 132
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 133
    return v1

    .line 136
    :cond_0
    const/4 v2, 0x0

    .line 138
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "content://"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".addtohomescreen"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 138
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    const-string v2, "value"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 148
    :goto_0
    if-eqz v0, :cond_2

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_2
    return v1

    .line 148
    :cond_3
    if-eqz v0, :cond_4

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 148
    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_3

    .line 145
    :catch_0
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_1

    .line 148
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 145
    :catch_1
    move-exception v0

    .line 146
    :goto_1
    :try_start_2
    const-string v3, "SessionCommitReceiver"

    const-string v4, "Error reading add to homescreen preference"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    if-eqz v2, :cond_4

    .line 149
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_4
    :goto_2
    return v1

    .line 148
    :goto_3
    if-eqz v2, :cond_5

    .line 149
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

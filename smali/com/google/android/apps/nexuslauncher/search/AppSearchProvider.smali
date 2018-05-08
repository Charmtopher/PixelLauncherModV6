.class public Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final Et:[Ljava/lang/String;


# instance fields
.field private final Eu:Landroid/content/ContentProvider$PipeDataWriter;

.field private Ev:Lcom/android/launcher3/util/LooperExecutor;

.field private mApp:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    const-string v0, "_id"

    const-string v1, "suggest_text_1"

    const-string v2, "suggest_icon_1"

    const-string v3, "suggest_intent_action"

    const-string v4, "suggest_intent_data"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->Et:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 76
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/b;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/search/b;-><init>(Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->Eu:Landroid/content/ContentProvider$PipeDataWriter;

    return-void
.end method

.method private static a(Landroid/content/ComponentName;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/compat/UserManagerCompat;)Landroid/net/Uri;
    .locals 2

    .line 287
    iget-object p1, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p1

    .line 288
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 289
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.apps.nexuslauncher.appssearch"

    .line 290
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "component"

    .line 291
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "user"

    .line 292
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 293
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 288
    return-object p0
.end method

.method public static a(Lcom/android/launcher3/AppInfo;Lcom/android/launcher3/compat/UserManagerCompat;)Landroid/net/Uri;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->a(Landroid/content/ComponentName;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/compat/UserManagerCompat;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/compat/UserManagerCompat;)Landroid/net/Uri;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->a(Landroid/content/ComponentName;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/compat/UserManagerCompat;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;)Lcom/android/launcher3/LauncherAppState;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->mApp:Lcom/android/launcher3/LauncherAppState;

    return-object p0
.end method

.method private m(Ljava/util/List;)Landroid/database/Cursor;
    .locals 7

    .line 121
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->Et:[Ljava/lang/String;

    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 125
    nop

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/AppInfo;

    .line 127
    invoke-static {v3, v1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->a(Lcom/android/launcher3/AppInfo;Lcom/android/launcher3/compat/UserManagerCompat;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    iget-object v3, v3, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    .line 130
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 131
    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const-string v3, "com.google.android.apps.nexuslauncher.search.APP_LAUNCH"

    .line 132
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 133
    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 134
    nop

    .line 126
    move v2, v6

    goto :goto_0

    .line 135
    :cond_0
    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 178
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 179
    const-string p1, "AppSearchProvider"

    const-string p2, "Content provider accessed on main thread"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-object v2

    .line 182
    :cond_0
    const-string v0, "loadIcon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/apps/nexuslauncher/e/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p1

    .line 185
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->Ev:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p3, Lcom/google/android/apps/nexuslauncher/search/c;

    invoke-direct {p3, p0, p1}, Lcom/google/android/apps/nexuslauncher/search/c;-><init>(Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;Lcom/android/launcher3/util/ComponentKey;)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 186
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 187
    const-string p3, "suggest_icon_1"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    return-object p2

    .line 189
    :catch_0
    move-exception p1

    .line 190
    const-string p2, "AppSearchProvider"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unable to load icon "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-object v2

    .line 194
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 150
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 140
    const-string p1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 145
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .locals 2

    .line 94
    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->Ev:Lcom/android/launcher3/util/LooperExecutor;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6

    .line 163
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 164
    const-string p1, "AppSearchProvider"

    const-string p2, "Content provider accessed on main thread"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 p1, 0x0

    return-object p1

    .line 168
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/apps/nexuslauncher/e/b;->a(Landroid/net/Uri;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p2

    .line 169
    const-string v2, "image/png"

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->Ev:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/search/c;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/nexuslauncher/search/c;-><init>(Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;Lcom/android/launcher3/util/ComponentKey;)V

    .line 170
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->Eu:Landroid/content/ContentProvider$PipeDataWriter;

    .line 169
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 171
    :catch_0
    move-exception p1

    .line 172
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 102
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_0

    .line 103
    const-string p1, "AppSearchProvider"

    const-string p2, "Content provider accessed on main thread"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object p2, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->Et:[Ljava/lang/String;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object p1

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 108
    new-instance p2, Lcom/google/android/apps/nexuslauncher/search/d;

    invoke-direct {p2, p1}, Lcom/google/android/apps/nexuslauncher/search/d;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 112
    :try_start_0
    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/search/d;->a(Lcom/google/android/apps/nexuslauncher/search/d;)Ljava/util/concurrent/FutureTask;

    move-result-object p1

    const-wide/16 p2, 0x5

    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 113
    :catch_0
    move-exception p1

    .line 114
    const-string p2, "AppSearchProvider"

    const-string p3, "Error searching apps"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->m(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 155
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

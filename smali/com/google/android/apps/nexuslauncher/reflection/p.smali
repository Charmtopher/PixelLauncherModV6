.class public Lcom/google/android/apps/nexuslauncher/reflection/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BP:Ljava/util/regex/Pattern;


# instance fields
.field private final BQ:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

.field private final BR:Lcom/google/android/apps/nexuslauncher/reflection/j;

.field private final BS:Ljava/io/File;

.field private BT:Lcom/google/android/apps/nexuslauncher/reflection/q;

.field private final mContext:Landroid/content/Context;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-string v0, "^InProgress:(.+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/d/c;Landroid/content/SharedPreferences;Ljava/io/File;Lcom/google/android/apps/nexuslauncher/reflection/j;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BQ:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    .line 96
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 97
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BS:Ljava/io/File;

    .line 98
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BR:Lcom/google/android/apps/nexuslauncher/reflection/j;

    .line 99
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BT:Lcom/google/android/apps/nexuslauncher/reflection/q;

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/reflection/p;)Lcom/google/android/apps/nexuslauncher/reflection/q;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BT:Lcom/google/android/apps/nexuslauncher/reflection/q;

    return-object p0
.end method

.method private declared-synchronized a(Lcom/google/android/apps/nexuslauncher/reflection/j;Lcom/google/android/apps/nexuslauncher/reflection/q;)V
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BT:Lcom/google/android/apps/nexuslauncher/reflection/q;

    if-ne v0, p2, :cond_0

    .line 142
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BR:Lcom/google/android/apps/nexuslauncher/reflection/j;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/nexuslauncher/reflection/j;->a(Lcom/google/android/apps/nexuslauncher/reflection/j;)V

    .line 143
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BR:Lcom/google/android/apps/nexuslauncher/reflection/j;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/j;->dY()Z

    .line 144
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BS:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 146
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BT:Lcom/google/android/apps/nexuslauncher/reflection/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/reflection/p;Lcom/google/android/apps/nexuslauncher/reflection/j;Lcom/google/android/apps/nexuslauncher/reflection/q;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/p;->a(Lcom/google/android/apps/nexuslauncher/reflection/j;Lcom/google/android/apps/nexuslauncher/reflection/q;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/reflection/p;Lcom/google/android/apps/nexuslauncher/reflection/q;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/p;->a(Lcom/google/android/apps/nexuslauncher/reflection/q;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/apps/nexuslauncher/reflection/q;)V
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BT:Lcom/google/android/apps/nexuslauncher/reflection/q;

    if-ne v0, p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 156
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "background_model_version"

    .line 157
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "staged_batch_training_progress"

    .line 158
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 159
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BS:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 162
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BT:Lcom/google/android/apps/nexuslauncher/reflection/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/google/android/apps/nexuslauncher/reflection/p;)Lcom/google/android/apps/nexuslauncher/reflection/d/c;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BQ:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/apps/nexuslauncher/reflection/p;)Landroid/content/SharedPreferences;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/apps/nexuslauncher/reflection/p;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/apps/nexuslauncher/reflection/p;)Ljava/io/File;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BS:Ljava/io/File;

    return-object p0
.end method

.method static synthetic ea()Ljava/util/regex/Pattern;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BP:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized dZ()I
    .locals 3

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "background_model_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isInProgress()Z
    .locals 3

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "staged_batch_training_progress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/p;->BP:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized w(Z)V
    .locals 2

    monitor-enter p0

    .line 118
    if-eqz p1, :cond_0

    .line 119
    :try_start_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 120
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "staged_batch_training_progress"

    const-string v1, "New"

    .line 121
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "background_model_version"

    const/16 v1, 0x28

    .line 122
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 123
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BS:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 117
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BT:Lcom/google/android/apps/nexuslauncher/reflection/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 126
    monitor-exit p0

    return-void

    .line 130
    :cond_1
    :goto_0
    :try_start_1
    new-instance p1, Lcom/google/android/apps/nexuslauncher/reflection/q;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/q;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/p;B)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BT:Lcom/google/android/apps/nexuslauncher/reflection/q;

    .line 133
    sget-object p1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->BT:Lcom/google/android/apps/nexuslauncher/reflection/q;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 117
    :goto_1
    monitor-exit p0

    throw p1
.end method

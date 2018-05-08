.class public Lcom/google/android/apps/nexuslauncher/reflection/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final CM:Ljava/io/File;

.field private final CN:Ljava/util/Set;

.field private final CO:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/io/File;Ljava/util/List;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->CO:Landroid/content/SharedPreferences;

    .line 24
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->CM:Ljava/io/File;

    .line 25
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->CN:Ljava/util/Set;

    .line 26
    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 4

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 42
    invoke-direct {p0, v3}, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->b(Ljava/io/File;)V

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->CN:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->CN:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->CN:Ljava/util/Set;

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 54
    :cond_3
    return-void
.end method


# virtual methods
.method public final declared-synchronized ei()V
    .locals 4

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->CO:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->CM:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->CM:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->CM:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 34
    invoke-direct {p0, v3}, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->b(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_0
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

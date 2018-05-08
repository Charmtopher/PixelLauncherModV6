.class public Lcom/google/android/gms/phenotype/a;
.super Ljava/lang/Object;


# static fields
.field private static final acF:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final acK:[Ljava/lang/String;


# instance fields
.field private final acG:Landroid/content/ContentResolver;

.field private final acH:Landroid/database/ContentObserver;

.field private final acI:Ljava/lang/Object;

.field private volatile acJ:Ljava/util/Map;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/a;->acF:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "key"

    const-string v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/phenotype/a;->acK:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/a;->acI:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/phenotype/a;->acG:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/gms/phenotype/a;->uri:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/phenotype/l;

    invoke-direct {p1, p0}, Lcom/google/android/gms/phenotype/l;-><init>(Lcom/google/android/gms/phenotype/a;)V

    iput-object p1, p0, Lcom/google/android/gms/phenotype/a;->acH:Landroid/database/ContentObserver;

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/phenotype/a;
    .locals 3

    sget-object v0, Lcom/google/android/gms/phenotype/a;->acF:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/phenotype/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/phenotype/a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/phenotype/a;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    sget-object p0, Lcom/google/android/gms/phenotype/a;->acF:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/phenotype/a;

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/google/android/gms/phenotype/a;->acG:Landroid/content/ContentResolver;

    iget-object p1, v0, Lcom/google/android/gms/phenotype/a;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/google/android/gms/phenotype/a;->acH:Landroid/database/ContentObserver;

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/phenotype/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/phenotype/a;->acI:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/phenotype/a;)Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/phenotype/a;->acJ:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final H(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/phenotype/a;->acJ:Ljava/util/Map;

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/phenotype/a;->acI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/phenotype/a;->acJ:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/phenotype/a;->acG:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/google/android/gms/phenotype/a;->uri:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/gms/phenotype/a;->acK:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/phenotype/a;->acJ:Ljava/util/Map;

    :cond_2
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_3
    :goto_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

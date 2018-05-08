.class public abstract Lcom/google/android/gms/phenotype/h;
.super Ljava/lang/Object;


# static fields
.field private static final adt:Ljava/lang/Object;

.field public static adu:Z

.field public static adv:Lcom/google/android/gms/internal/cw;

.field public static context:Landroid/content/Context;


# instance fields
.field public final adA:Ljava/lang/Object;

.field public adB:Ljava/lang/Object;

.field public final adw:Ljava/lang/String;

.field public final adx:Ljava/lang/String;

.field public final ady:Ljava/lang/String;

.field public final adz:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/h;->adt:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/phenotype/h;->context:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/phenotype/h;->adu:Z

    const-string v1, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cw;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/cw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/phenotype/h;->adv:Lcom/google/android/gms/internal/cw;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/phenotype/h;->adB:Ljava/lang/Object;

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass one of SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/phenotype/h;->adw:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/phenotype/h;->adx:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/phenotype/h;->ady:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/phenotype/h;->adz:Landroid/net/Uri;

    iput-object p5, p0, Lcom/google/android/gms/phenotype/h;->adA:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/google/android/gms/phenotype/h;
    .locals 8

    new-instance v7, Lcom/google/android/gms/phenotype/q;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/phenotype/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v7
.end method

.method public static a(Lcom/google/android/gms/common/a/h;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/common/a/h;->gu()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    invoke-interface {p0}, Lcom/google/android/gms/common/a/h;->gu()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method static synthetic a(Lcom/google/android/gms/phenotype/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/phenotype/h;->adx:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/phenotype/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/phenotype/h;->adw:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ic()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/google/android/gms/phenotype/h;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/phenotype/h;->adt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    sput-object p0, Lcom/google/android/gms/phenotype/h;->context:Landroid/content/Context;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/google/android/gms/phenotype/h;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/internal/cw;->init(Landroid/content/Context;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/google/android/gms/phenotype/h;->adu:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract I(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract d(Landroid/content/SharedPreferences;)Ljava/lang/Object;
.end method

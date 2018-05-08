.class Landroid/support/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic aI:Landroid/support/a/a;


# direct methods
.method constructor <init>(Landroid/support/a/a;)V
    .locals 0

    .line 58
    iput-object p1, p0, Landroid/support/a/b;->aI:Landroid/support/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final r()V
    .locals 3

    .line 60
    iget-object v0, p0, Landroid/support/a/b;->aI:Landroid/support/a/a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/support/a/a;->a(Landroid/support/a/a;J)J

    .line 61
    iget-object v0, p0, Landroid/support/a/b;->aI:Landroid/support/a/a;

    iget-object v1, p0, Landroid/support/a/b;->aI:Landroid/support/a/a;

    invoke-static {v1}, Landroid/support/a/a;->a(Landroid/support/a/a;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/support/a/a;->b(Landroid/support/a/a;J)V

    .line 62
    iget-object v0, p0, Landroid/support/a/b;->aI:Landroid/support/a/a;

    invoke-static {v0}, Landroid/support/a/a;->b(Landroid/support/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Landroid/support/a/b;->aI:Landroid/support/a/a;

    invoke-static {v0}, Landroid/support/a/a;->c(Landroid/support/a/a;)Landroid/support/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/a/d;->s()V

    .line 65
    :cond_0
    return-void
.end method

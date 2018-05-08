.class Landroid/support/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aL:Landroid/support/a/e;


# direct methods
.method constructor <init>(Landroid/support/a/e;)V
    .locals 0

    .line 226
    iput-object p1, p0, Landroid/support/a/f;->aL:Landroid/support/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 229
    iget-object v0, p0, Landroid/support/a/f;->aL:Landroid/support/a/e;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/support/a/e;->aK:J

    .line 230
    iget-object v0, p0, Landroid/support/a/f;->aL:Landroid/support/a/e;

    iget-object v0, v0, Landroid/support/a/e;->aJ:Landroid/support/a/b;

    invoke-virtual {v0}, Landroid/support/a/b;->r()V

    .line 231
    return-void
.end method

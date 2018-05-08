.class public abstract Landroid/support/v4/app/as;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected hw:Landroid/support/v4/app/ar;

.field hx:Ljava/lang/CharSequence;

.field hy:Ljava/lang/CharSequence;

.field hz:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1653
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/as;->hz:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/an;)V
    .locals 0

    .line 1678
    return-void
.end method

.method public final a(Landroid/support/v4/app/ar;)V
    .locals 1

    .line 1656
    iget-object v0, p0, Landroid/support/v4/app/as;->hw:Landroid/support/v4/app/ar;

    if-eq v0, p1, :cond_0

    .line 1657
    iput-object p1, p0, Landroid/support/v4/app/as;->hw:Landroid/support/v4/app/ar;

    .line 1658
    iget-object p1, p0, Landroid/support/v4/app/as;->hw:Landroid/support/v4/app/ar;

    if-eqz p1, :cond_0

    .line 1659
    iget-object p1, p0, Landroid/support/v4/app/as;->hw:Landroid/support/v4/app/ar;

    invoke-virtual {p1, p0}, Landroid/support/v4/app/ar;->a(Landroid/support/v4/app/as;)Landroid/support/v4/app/ar;

    .line 1662
    :cond_0
    return-void
.end method

.class public Landroid/support/v4/app/aq;
.super Landroid/support/v4/app/as;
.source "SourceFile"


# instance fields
.field private gK:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2060
    invoke-direct {p0}, Landroid/support/v4/app/as;-><init>()V

    .line 2061
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aq;
    .locals 0

    .line 2090
    invoke-static {p1}, Landroid/support/v4/app/ar;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/aq;->gK:Ljava/lang/CharSequence;

    .line 2091
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/an;)V
    .locals 2

    .line 2100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2101
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 2102
    invoke-interface {p1}, Landroid/support/v4/app/an;->au()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroid/support/v4/app/aq;->hx:Ljava/lang/CharSequence;

    .line 2103
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/app/aq;->gK:Ljava/lang/CharSequence;

    .line 2104
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 2105
    iget-boolean v0, p0, Landroid/support/v4/app/aq;->hz:Z

    if-eqz v0, :cond_0

    .line 2106
    iget-object v0, p0, Landroid/support/v4/app/aq;->hy:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 2109
    :cond_0
    return-void
.end method

.class public Landroid/support/v4/app/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field gE:Landroid/os/Bundle;

.field public gL:Ljava/util/ArrayList;

.field gM:Ljava/util/ArrayList;

.field gN:Ljava/lang/CharSequence;

.field gO:Ljava/lang/CharSequence;

.field public gP:Landroid/app/PendingIntent;

.field gQ:Landroid/app/PendingIntent;

.field gR:Landroid/widget/RemoteViews;

.field gS:Landroid/graphics/Bitmap;

.field gT:Ljava/lang/CharSequence;

.field gU:I

.field gV:I

.field gW:Z

.field gX:Z

.field gY:Landroid/support/v4/app/as;

.field gZ:Ljava/lang/CharSequence;

.field ha:[Ljava/lang/CharSequence;

.field hb:I

.field hc:I

.field hd:Z

.field he:Ljava/lang/String;

.field hf:Z

.field hg:Ljava/lang/String;

.field public hh:Z

.field hi:Z

.field hj:Z

.field hk:Ljava/lang/String;

.field hl:I

.field hm:Landroid/app/Notification;

.field hn:Landroid/widget/RemoteViews;

.field ho:Landroid/widget/RemoteViews;

.field hp:Landroid/widget/RemoteViews;

.field hq:Ljava/lang/String;

.field hr:Ljava/lang/String;

.field hs:J

.field ht:I

.field public hu:Landroid/app/Notification;

.field public hv:Ljava/util/ArrayList;

.field mBadgeIcon:I

.field mColor:I

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 740
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ar;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ar;->gL:Ljava/util/ArrayList;

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ar;->gM:Ljava/util/ArrayList;

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ar;->gW:Z

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/ar;->hh:Z

    .line 691
    iput v0, p0, Landroid/support/v4/app/ar;->mColor:I

    .line 692
    iput v0, p0, Landroid/support/v4/app/ar;->hl:I

    .line 698
    iput v0, p0, Landroid/support/v4/app/ar;->mBadgeIcon:I

    .line 701
    iput v0, p0, Landroid/support/v4/app/ar;->ht:I

    .line 702
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/ar;->hu:Landroid/app/Notification;

    .line 724
    iput-object p1, p0, Landroid/support/v4/app/ar;->mContext:Landroid/content/Context;

    .line 725
    iput-object p2, p0, Landroid/support/v4/app/ar;->hq:Ljava/lang/String;

    .line 728
    iget-object p1, p0, Landroid/support/v4/app/ar;->hu:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Landroid/app/Notification;->when:J

    .line 729
    iget-object p1, p0, Landroid/support/v4/app/ar;->hu:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 730
    iput v0, p0, Landroid/support/v4/app/ar;->gV:I

    .line 731
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/ar;->hv:Ljava/util/ArrayList;

    .line 732
    return-void
.end method

.method protected static e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1576
    if-nez p0, :cond_0

    return-object p0

    .line 1577
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    .line 1578
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1580
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/as;)Landroid/support/v4/app/ar;
    .locals 1

    .line 1403
    iget-object v0, p0, Landroid/support/v4/app/ar;->gY:Landroid/support/v4/app/as;

    if-eq v0, p1, :cond_0

    .line 1404
    iput-object p1, p0, Landroid/support/v4/app/ar;->gY:Landroid/support/v4/app/as;

    .line 1405
    iget-object p1, p0, Landroid/support/v4/app/ar;->gY:Landroid/support/v4/app/as;

    if-eqz p1, :cond_0

    .line 1406
    iget-object p1, p0, Landroid/support/v4/app/ar;->gY:Landroid/support/v4/app/as;

    invoke-virtual {p1, p0}, Landroid/support/v4/app/as;->a(Landroid/support/v4/app/ar;)V

    .line 1409
    :cond_0
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ar;
    .locals 0

    .line 809
    invoke-static {p1}, Landroid/support/v4/app/ar;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/ar;->gN:Ljava/lang/CharSequence;

    .line 810
    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ar;
    .locals 0

    .line 817
    invoke-static {p1}, Landroid/support/v4/app/ar;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/ar;->gO:Ljava/lang/CharSequence;

    .line 818
    return-object p0
.end method

.method public final d(Ljava/lang/CharSequence;)Landroid/support/v4/app/ar;
    .locals 1

    .line 946
    iget-object v0, p0, Landroid/support/v4/app/ar;->hu:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/ar;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 947
    return-object p0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1319
    iget-object v0, p0, Landroid/support/v4/app/ar;->gE:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ar;->gE:Landroid/os/Bundle;

    .line 1322
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ar;->gE:Landroid/os/Bundle;

    return-object v0
.end method

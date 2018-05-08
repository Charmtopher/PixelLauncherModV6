.class public final synthetic Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$UktDIb2PRzNBkMvJ-e6W-2LoCng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private final synthetic f$0:F

.field private final synthetic f$1:F

.field private final synthetic f$2:D

.field private final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(FFDF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$UktDIb2PRzNBkMvJ-e6W-2LoCng;->f$0:F

    iput p2, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$UktDIb2PRzNBkMvJ-e6W-2LoCng;->f$1:F

    iput-wide p3, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$UktDIb2PRzNBkMvJ-e6W-2LoCng;->f$2:D

    iput p5, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$UktDIb2PRzNBkMvJ-e6W-2LoCng;->f$3:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 6

    iget v0, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$UktDIb2PRzNBkMvJ-e6W-2LoCng;->f$0:F

    iget v1, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$UktDIb2PRzNBkMvJ-e6W-2LoCng;->f$1:F

    iget-wide v2, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$UktDIb2PRzNBkMvJ-e6W-2LoCng;->f$2:D

    iget v4, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$UktDIb2PRzNBkMvJ-e6W-2LoCng;->f$3:F

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->lambda$handleFirstSwipeToOverview$1(FFDFF)F

    move-result p1

    return p1
.end method
